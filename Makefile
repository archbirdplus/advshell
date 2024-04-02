##
## ASH Makefile
##

CFLAGS	= -O
L	= /usr/local/lib
B	= /usr/local/bin

install:	$L/ash.help $L/ash.inst $L/ash.has $B/ash

$B/ash:		ash.sh
	rm -f $B/ash
	cp ash.sh $B/ash
	chmod 755 $B/ash
$L/ash.help:	ash.help
	cp ash.help $L/ash.help
$L/ash.inst:	ash.inst
	cp ash.inst $L/ash.inst
$L/ash.has:	ash.has
	cp ash.has $L/ash.has
ash.has:	has.c
	$(CC) $(CFLAGS) has.c -o ash.has
