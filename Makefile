# hwwm - Halfwit's Window Manager 
# See LICENSE file for copyright and license details.

PREFIX ?= /usr/local

OTHER = \
	autotag \
	fullscreen \
	gitbar \
	groups \
	groupsbar \
	stack \
	wshuf

install:
	@mkdir -p ${DESTDIR}${PREFIX}/bin/
	@cp -f hwwm ${DESTDIR}${PREFIX}/bin/hwwm
	@cp -f inotifybar ${DESTDIR}${PREFIX}/bin/inotifybar
	@mkdir -p ${DESTDIR}${PREFIX}/share/hwwm/
	@for i in ${OTHER}; do \
		sed "s|/usr/local/share/hwwm/|${DESTDIR}${PREFIX}/share/hwwm/|g" $$i > ${DESTDIR}${PREFIX}/share/hwwm/$$i; \
	done

.PHONY: install
