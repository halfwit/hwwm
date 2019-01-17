# hwwm - Halfwit's Window Manager 
# See LICENSE file for copyright and license details.

PREFIX ?= /usr/local

OTHER = \
	autotag \
	fullscreen \
	focus \
	gitbar \
	groups \
	groupsbar \
	doublebinpack \
	triplebinpack \
	stack \
	wshuf

install:
	@mkdir -p ${DESTDIR}${PREFIX}/bin/
	@cp -f hwwm ${DESTDIR}${PREFIX}/bin/hwwm
	@cp -f inotifybar ${DESTDIR}${PREFIX}/bin/inotifybar
	@mkdir -p ${DESTDIR}${PREFIX}/share/hwwm/
	@for i in ${OTHER}; do \
		sed "s|/usr/local/share/hwwm/|${DESTDIR}${PREFIX}/share/hwwm/|g" $$i > ${DESTDIR}${PREFIX}/share/hwwm/$$i; \
		chmod 0755 ${DESTDIR}${PREFIX}/share/hwwm/$$i; \
	done

.PHONY: install
