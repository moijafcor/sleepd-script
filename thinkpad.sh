#!/bin/bash

case "$1" in
    hibernate)
        systemctl stop nginx;
        systemctl stop redis;
        systemctl stop mysql;
        ;;
    resume) 
        systemctl start nginx;
        systemctl start redis;
        systemctl start mysql;
        #Re-enable trackpad
        rmmod psmouse;
        modprobe psmouse;
        ;;
    suspend)
        systemctl stop nginx;
        systemctl stop redis;
        systemctl stop mysql;
        ;;
    thaw)
        systemctl start nginx;
        systemctl start redis;
        systemctl start mysql;
        #Re-enable trackpad
        rmmod psmouse;
        modprobe psmouse;
        ;;
    *)
        ;;
esac
