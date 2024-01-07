#include "Server.hpp"

Server::Server() :
    m_port(-1),
    m_socket_fd(-1)
{
    m_server_destructing_allowed.store(false);
}
Server::~Server() {
    while (!m_server_destructing_allowed.load());
    stopConnectionHandling();
    close(this->m_socket_fd);
}


void Server::host(const char *port)
{
    int socket_fd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (socket_fd == -1) {
        EL("Socket error");
        throw std::runtime_error("Socket opening error");
    }

    struct sockaddr_in socketAddr;
    socketAddr.sin_family = AF_INET;
    socketAddr.sin_port = htons((uint16_t)atoi(port));
    socketAddr.sin_addr.s_addr = INADDR_ANY;

    int yes = 1;
    setsockopt(socket_fd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(int));

    if (bind(socket_fd, (struct sockaddr*)&socketAddr, sizeof(socketAddr)) == -1) {
        EL("Bind error");
        throw std::runtime_error("Caught error while binding");
    }

    if (listen(socket_fd, LISTEN_BACKLOG) == -1) {
        EL("Listen error");
        throw std::runtime_error("Failed to set socket to listening state");
    }

    this->m_port = atoi(port);
    this->m_socket_fd = socket_fd;
}
Connection & Server::awaitNewConnection(std::function<void(Connection&)> on_connect)
{
    const std::lock_guard<std::mutex> lock(m_connections_mutex);
    struct sockaddr remoteaddr;
    socklen_t addrlen = sizeof(remoteaddr);

    int new_fd = 0;
    if (new_fd = accept(this->m_socket_fd, (struct sockaddr*)&remoteaddr, &addrlen); new_fd == -1) {
        EL("Failed to accept new connection");
        throw std::runtime_error("Failed to accept new connection");
    }

    LOG("New connection accepted " << new_fd);

    std::shared_ptr<Connection> connection = std::make_shared<Connection>(new_fd, this->m_port);

    if (on_connect != nullptr) 
        this->m_on_connect = on_connect;
    if (this->m_on_connect != nullptr) 
        m_on_connect(*connection);

    this->m_connections.push_back(std::move(connection));
    return *(this->m_connections.at(this->m_connections.size() - 1));
}

void Server::respond(const char * data) const
{
    Message message = Message(data);
    respond(message);
}
void Server::respond(std::string data) const
{
    Message message = Message(data);
    sendMessage(message);
}
void Server::respond(Message& message) const
{
    if(this->m_lastly_used_connection == 0) {
        EL("You cannot respond since you have not received anything");
        throw std::runtime_error("You cannot respond since you have not received anything");
    }
    LOG("Sending message: " << message);
    if (send(this->m_lastly_used_connection, message, message.size(), 0) == -1) {
        EL("Message sending failed");
        throw std::runtime_error("Message sending error");
    }
}

void Server::sendMessage(const char * data, const int index) const
{
    Message message = Message(data);
    sendMessage(message, index);
}
void Server::sendMessage(std::string data, const int index) const
{
    Message message = Message(data);
    sendMessage(message, index);
}
void Server::sendMessage(Message& message, const int index) const
{
    sendMessage(message, *(this->m_connections[index]));
}
void Server::sendMessage(Message &message, const Connection & connection) const
{
    LOG("Sending message: " << message);
    if (send(connection, message, message.size(), 0) == -1) {
        EL("Message sending failed");
        throw std::runtime_error("Message sending error");
    }
}

std::unique_ptr<Responce> Server::recieveMessageFrom(const int index)
{
    return recieveMessageFrom(*(this->m_connections[index]));
}
std::unique_ptr<Responce> Server::recieveMessageFrom(const Connection &connection)
{
    std::array<char, BUFFER_SIZE> buffer;
    int data_size = 0;
    if (data_size = (int)recv(connection, buffer.data(), BUFFER_SIZE, 0); data_size == -1) {
        EL("Failed to recieve data from " << connection);
        throw std::runtime_error("Failed to recieve data");
    }
    // LOG("Acquired a message from " << connection << " with size " << data_size);
    m_lastly_used_connection = (int)connection;
    std::unique_ptr<Responce> responce = std::make_unique<Responce>(buffer, data_size);
    return responce;
}

int Server::getPort()
{
    return this->m_port;
}
std::vector<std::shared_ptr<Connection>> Server::getConnections()
{
    return this->m_connections;
}

Server::operator int()
{
    return this->m_socket_fd;
}
Server &Server::operator=(const Server &other)
{
    if (this != &other) {
        this->m_socket_fd = other.m_socket_fd;
        this->m_port = other.m_port;
        this->m_connections.clear();
        for (auto &connection : other.m_connections)
            this->m_connections.push_back(connection);
        this->m_on_connect = other.m_on_connect;
    }
    return *this;
}

void Server::setConnectionHandler(std::function<void(Connection &)> on_connect)
{
    if (on_connect != nullptr) 
        this->m_on_connect = on_connect;
}

void Server::startConnectionHandling(std::function<void(Connection &)> on_connect)
{
    if (this->m_connection_handling_started.load())
        return;

    LOG("Now all incomming connections would be handled");
    this->m_connection_handling_started.store(true);
    std::thread connection_handler([&] (std::function<void(Connection&)> on_connect) {
        pollfd data = (pollfd) { this->m_socket_fd, POLLIN, 0 };
        while (this->m_connection_handling_started.load()) {
            const std::lock_guard<std::mutex> lock(m_connections_mutex);
            struct sockaddr remoteaddr;
            socklen_t addrlen = sizeof(remoteaddr);

            while (poll(&data, 1, DEFAULT_TIMEOUT) > 0) {
                int new_fd = 0;
                if (new_fd = accept(this->m_socket_fd, (struct sockaddr*)&remoteaddr, &addrlen); new_fd == -1) {
                    EL("Failed to accept new connection");
                }

                ILOG("New connection accepted " << new_fd);

                std::shared_ptr<Connection> connection = std::make_shared<Connection>(new_fd, this->m_port);

                if (on_connect != nullptr) 
                    this->m_on_connect = on_connect;

                if (this->m_on_connect != nullptr) 
                    m_on_connect(*connection);

                this->m_connections.push_back(std::move(connection));   
            }
            m_server_destructing_allowed.store(true);
        }
    }, on_connect);
    connection_handler.detach();
}
void Server::stopConnectionHandling()
{
    LOG("Stopped new connection handling");
    this->m_connection_handling_started.store(false);
}

