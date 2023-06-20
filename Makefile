all:
	@echo "You must run make install"

install: 
	cp -f converter /usr/bin
	mkdir -p /etc/converter/filters.d
	cp -f filters.d/*filter /etc/converter/filters.d
	cp -f text2wave_spanish /etc/converter 
	cp tools /etc/converter/
	mkdir -p /usr/share/doc/converter
	cp Changelog COPYING README TODO /usr/share/doc/converter

install_kde_services: 
	./generate_kde_services


