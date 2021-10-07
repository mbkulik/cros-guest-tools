
# Cros Guest Tools

Guest packages for Fedora container integration with Chrome OS

## Source Repository

https://chromium.googlesource.com/chromiumos/containers/cros-container-guest-tools/

## COPR Builds

https://copr.fedorainfracloud.org/coprs/mbkulik/cros-guest-tools/

## Requirements

- make
- rpm-build
- rpmdevtools

## Building

1. Use ```make``` to pull source, setup rpmbuild directory, and create source rpm

2. Use ```rpmbuild --rebuild XXX.src.rpm``` to create the rpm packages. 
```XXX.src.rpm``` is replaced with the actual name of the source rpm created in
step 1. This will be located in ```~/rpmbuild/SRPMS/```