

all:;
	./Build 
	./Build distmeta

dist:;
	./Build dist

test:;
	./Build test

clean:;
	./Build clean

distcheck:;
	./Build distcheck

Build:;
	perl Build.PL

