#!/bin/sh

case "$1" in
    start)
        echo "Starting server"
        start-stop-daemon -S -n server -a /usr/bin/server -- -d
        ;;
    stop)
        echo "Stopping aesdsocket"
        start-stop-daemon -K -n server
        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1
esac
exit 0
