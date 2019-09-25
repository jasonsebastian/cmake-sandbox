# Simple library

To be able to link against pre-built libraries, the `.xcodeproj` file under iOS example app needs to be configured as such:
* Under `Build Settings`, insert additional paths for Library Search Paths and Header Search Paths.
```
$(PROJECT_DIR)/../../distribution/ios/Debug
$(PROJECT_DIR)/../../include
```
* Under `Build Phases`, add the pre-built library under `Link Binary with Libraries`.

All possible architectures are combined unto a single static library file. The possible architecture(s) is determined by the deployment target version, as in most cases deployment target allow a subset of all possible architectures.

`CMAKE_OSX_SYSROOT` must be passed in as a paramater when generating build files. This variable specifies the location or name of the macOS platform SDK to be used.