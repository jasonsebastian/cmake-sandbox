# 06-dependency-manager

Based on the reason well explained in [this blog](https://geokon-gh.github.io/hunterintro.html)

> Using `External_Project_Add`: Libraries are added by using find_package() and then juggling the CMake variables you get back. 

> Using `git-submodule`: Dependencies will often reuse target names. Many dependencies are not setup to be used as CMake subdirectories. Variables such as the project-version-number get overwritten by the parent project.

> In vanilla CMake, common libraries like `zlib` will be built on each dependencies.

## Todo
Four possible scenario to look at:
- [x] open source software to be compiled from source
- [ ] compiled (download binary) of a open source software
- [ ] closed source software to be compiled from source
- [ ] compiled (download binary) of a closed source software

## Discussion regarding binary download

Precompiled binary download as dependency can actually be seen from other perspectives, that is seeing it as download from a 'cache'.
Actually, that's what we exactly do when we get the cached dependency from `HUNTER_ROOT`.
In [Ruslan's comment](https://github.com/ruslo/hunter/issues/75#issue-69407135):
> It should be quite simple task after implementation of cache. I.e. merge several `${HUNTER_ROOT}/_Base/Cache` directories from Jenkins server and make it public. 

And further more with the variable `HUNTER_DISABLE_BUILDS` to disable building dependency ([link](https://github.com/ruslo/hunter/issues/75#issuecomment-197248511)) we can force the download to be from the cache (such that we may get the dependency without access to the source).

More discussion regarding different build caused by different OSes and toolchains can be seen [here](https://github.com/ruslo/hunter/issues/296).

Some reference that might be useful [1](https://docs.hunter.sh/en/latest/user-guides/hunter-user.html?highlight=hunter_disable_builds#uploading-binaries), [2](https://docs.hunter.sh/en/latest/user-guides/hunter-user/nexus-cache-server.html).
