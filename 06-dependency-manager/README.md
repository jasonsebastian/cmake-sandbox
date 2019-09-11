# 06-dependency-manager

Based on the reason well explained in [this blog](https://geokon-gh.github.io/hunterintro.html)
> Using `External_Project_Add`: Libraries are added by using find_package() and then juggling the CMake variables you get back. 
> Using `git-submodule`: Dependencies will often reuse target names. Many dependencies are not setup to be used as CMake subdirectories. Variables such as the project-version-number get overwritten by the parent project.
> In vanilla CMake, common libraries like `zlib` will be built on each dependencies.

## Todo
Four possible scenario to look at:
- [ ] open source software to be compiled from source
- [ ] compiled (download binary) of a open source software
- [ ] closed source software to be compiled from source
- [ ] compiled (download binary) of a closed source software
