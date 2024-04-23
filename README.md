
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

## Versioning Scheme

- The major version increases by one, when the package is built using a newer
  upstream hash code.
  - minor version cleared
  - release number reset to 1
- The minor version increases by one when a local patch is applied to fix
  issues and/or enable new features
- The release number increases by one when a spec file change is made that does
  not meet the above major and minor criteria
