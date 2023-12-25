#pragma once
#include <string>
#include <vector>

#include <sys/socket.h>
#include <netdb.h>
#include <unistd.h>

#include "debugKit/basic.hpp"

#include "../Connection/Connection.hpp"

#include "Exceptions/HostException.hpp"
#include "Exceptions/BindException.hpp"
#include "Exceptions/ListenException.hpp"

#define LISTEN_BACKLOG 20

class Server
{
protected:
    std::vector<Connection> m_connections;
    u_int16_t m_port;
    int m_socket_fd;
public:
    Server();
    ~Server();

    void host(std::string port);
    void host(char* port);
    void host(int port);

    u_int16_t getPort();

    operator int();
private:
    void host(u_int16_t);
};