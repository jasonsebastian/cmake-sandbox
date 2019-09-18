# Shared library

This project compiles source code to shared library, and sets the output directory to `distribution`.

Inside the build script, I made a function to wrap the building process for MacOS. To build library for MacOS, run

```bash
cmake -DBUILD_EXAMPLE_MACOS=ON ..
```

This will create an MacOS-specific executable which links to the shared library, and placed under `examples/macos/`.