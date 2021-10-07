HASH=97e0120

all: cros-guest-tools-${HASH}.tar.gz prep srpm

cros-guest-tools-${HASH}.tar.gz:
	curl -L https://chromium.googlesource.com/chromiumos/containers/cros-container-guest-tools/+archive/${HASH}.tar.gz -o cros-guest-tools-${HASH}.tar.gz

prep: cros-guest-tools-${HASH}.tar.gz
	rpmdev-setuptree
	cp cros-guest-tools-${HASH}.tar.gz ~/rpmbuild/SOURCES

srpm:
	rpmbuild -bs cros-guest-tools.spec