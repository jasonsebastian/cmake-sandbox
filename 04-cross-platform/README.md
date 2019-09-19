# Cross platform

When building for Android and MacOS, make sure `build.sh` is invoking the appropriate macro and run `./build.sh`.

When building for Linux, make sure Docker is running, make sure `build.sh` is invoking `build_for_linux` macro and run `docker build -t sandbox-linux .`.
