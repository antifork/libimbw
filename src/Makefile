SOURCES   = imbw_accept.c imbw_bf.c imbw_cleanup.c imbw_close_fds_expect012.c imbw_connect.c imbw_connections.c imbw_debug.c imbw_destroy.c imbw_disconnect.c imbw_dlsize.c imbw_errors.c imbw_gethostbyif.c imbw_getlongbyname.c imbw_init.c imbw_ipfromlong.c imbw_keepalive.c imbw_listen.c imbw_main.c imbw_packet_cksum.c imbw_plugin.c imbw_plugin_recvicmp.c imbw_plugin_recvtcp.c imbw_plugin_recvudp.c imbw_plugin_sendicmp.c imbw_plugin_sendtcp.c imbw_plugin_sendudp.c imbw_rand.c imbw_recursive_mutex.c imbw_recv.c imbw_send.c imbw_threads.c imbw_timeout.c imbw_timeouts.c 
LIBNAME   = imbw
AR        = ar
CC        = gcc
CFLAGS    = -O2 -funroll-loops -fomit-frame-pointer -Wall 
CPPFLAGS  =  
DEFINES   = -DHAVE_CONFIG_H
INCLS     =  -I/usr/local/include/openssl

DESTS     = $(SOURCES:.c=.o)

.c.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) $(DEFINES) $(INCLS) -c $< -o $@
	indent -orig $<


all: libimbw


libimbw:   $(DESTS)
	@rm -f *c~
	$(AR) -cr $(LIBNAME).a $(DESTS)

clean:
	rm -f *.[oa] *.c~

distclean: clean
	rm -f Makefile

