.PHONY: all clean pkg

PKG := pkg/openbox

all: pkg clean

clean:
	rm -rf pkg/build

pkg:
	mkdir -p ${PKG}/build && \
	cp ${PKG}/PKGBUILD ${PKG}/build/ && \
	cd ${PKG}/build && makepkg -Acs && \
	cd ../../

install:
	sudo pacman -U ${PKG}/build/adapta-midnight-gtk-theme-git-5d3048c-1-any.pkg.tar