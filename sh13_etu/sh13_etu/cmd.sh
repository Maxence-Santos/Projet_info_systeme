#! /bin/sh
gcc -o sh13 sh13.c `pkg-config sdl2 SDL2_image SDL2_ttf --cflags --libs` -lpthread
gcc -o server server.c
