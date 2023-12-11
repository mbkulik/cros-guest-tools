
# Cros Guest Tools

Guest packages for Fedora container integration with Chrome OS

## Source Repository

https://chromium.googlesource.com/chromiumos/containers/cros-container-guest-tools/

## COPR Builds

https://copr.fedorainfracloud.org/coprs/mbkulik/cros-guest-tools/

## Requirements

- rpm-build
- rpmdevtools

## Building

1. Setup the rpm development tree

    ```rpmdev-setuptree```

2. Install build dependencies

    ```dnf builddep -y cros-guest-tools.spec```

3. Download source

    ```spectool -g -R cros-guest-tools.spec```

4. Build source package

    ```rpmbuild -bs cros-guest-tools.spec```

5. Use ```rpmbuild --rebuild XXX.src.rpm``` to create the rpm packages.
   ```XXX.src.rpm``` is replaced with the actual name of the source rpm created in
   the previous step. The source package will be located in ```~/rpmbuild/SRPMS/```
