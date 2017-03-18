# hwwm - Halfwit's Window Manager 
# See LICENSE file for copyright and license details.

PREFIX ?= /usr/local

SRC = \
	autotag \
	fullscreen \
	gitbar \
	groups \
	groupsbar \
	inotifybar \
	stack \
	watcher \
	wshuf

install:
	@mkdir -p ${DESTDIR}${PREFIX}/share/hwwm
	@for i in ${SRC}; do \
		sed "s|/usr/local/share/hwwm/|${DESTDIR}${PREFIX}/share/hwwm/|g" $$i > ${DESTDIR}${PREFIX}/share/hwwm/$$i; \
	done

.PHONY: install
