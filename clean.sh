#!/bin/sh

for f in \
	`find . -name Makefile.in -o -name Makefile` \
	`find . -name .libs -o -name .deps` \
	`find . -name '*.o' -o -name '*.la' -o -name '*.lo' -o -name '*.loT'` \
	aclocal.m4* autom4te.cache stamp-h1 \
	configure config.h config.log config.status \
	depcomp install-sh ltmain.sh missing mkinstalldirs libtool \
	genext2fs
do
	rm -rf $f
done
