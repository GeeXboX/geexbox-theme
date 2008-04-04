VERSION=`hg tip --template={rev}`
ARCHIVE_NAME=theme-omc-r$(VERSION).tar.bz2

all: theme

theme: clean
	@tar cjf $(ARCHIVE_NAME) theme-omc

upload: theme
	@scp $(ARCHIVE_NAME) geexbox.org:/var/www/geexbox/src/devel/

clean:
	@rm -f *.tar.bz2

.PHONY: theme upload clean
