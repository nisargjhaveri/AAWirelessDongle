#pragma once

#include <atomic>
#include <optional>
#include <thread>

class AAWProxy {
public:
    std::optional<std::thread> startServer(int32_t port);

private:
    enum class ProxyDirection {
        TCP_to_USB,
        USB_to_TCP
    };

    void handleClient(int server_fd);
    void forward(ProxyDirection direction, std::atomic<bool>& should_exit);

    int poll(int fd, short event, std::atomic<bool>& interrupt);
    ssize_t read(int fd, unsigned char *buf, size_t nbyte, std::atomic<bool>& interrupt);
    ssize_t write(int fd, const unsigned char *buf, size_t nbyte, std::atomic<bool>& interrupt);

    ssize_t readFully(int fd, unsigned char *buf, size_t nbyte, std::atomic<bool>& interrupt);
    ssize_t readMessage(int fd, unsigned char *buf, size_t nbyte, std::atomic<bool>& interrupt);

    int m_usb_fd = -1;
    int m_tcp_fd = -1;
};
