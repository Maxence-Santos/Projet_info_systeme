all: server sh13

server: server.c
	gcc -o server server.c

sh13: sh13.c
	gcc -o sh13 sh13.c `pkg-config sdl2 SDL2_image SDL2_ttf --cflags --libs` -lpthread

run: all
	pkill server || true
	./server 123456 & \
	sleep 1; \
	./sh13 localhost 123456 localhost 5001 Alice & \
	./sh13 localhost 123456 localhost 5002 Bob & \
	./sh13 localhost 123456 localhost 5003 Charles & \
	./sh13 localhost 123456 localhost 5004 David

clean:
	rm -f *.o

vclean:
	rm -f server sh13