all:	install run

install:
	rsync -avP bin etc ${HOME}

run:
	${HOME}/bin/shortcuts
