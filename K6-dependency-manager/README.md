# 06-dependency-manager

Based on the reason well explained in [this blog](https://geokon-gh.github.io/hunterintro.html)

> Using `External_Project_Add`: Libraries are added by using find_package() and then juggling the CMake variables you get back. 

> Using `git-submodule`: Dependencies will often reuse target names. Many dependencies are not setup to be used as CMake subdirectories. Variables such as the project-version-number get overwritten by the parent project.

> In vanilla CMake, common libraries like `zlib` will be built on each dependencies.

## Todo
Four possible scenario to look at:
- [x] open source software to be compiled from source (see A-open-from-source)
- [x] use cached binary of open source (B-nexus-caching)
- [ ] fetch closed source software by custom huntergate (WIP: difficulty in hunterizing the package)
- [ ] cache and use different builds (different configurations)

## Discussion regarding binary download
Precompiled binary download as dependency can actually be seen from other perspectives, that is seeing it as download from a 'cache'.
Actually, that's what we exactly do when we get the cached dependency from `HUNTER_ROOT`.
In [Ruslan's comment](https://github.com/ruslo/hunter/issues/75#issue-69407135):
> It should be quite simple task after implementation of cache. I.e. merge several `${HUNTER_ROOT}/_Base/Cache` directories from Jenkins server and make it public. 

And further more with the variable `HUNTER_DISABLE_BUILDS` to disable building dependency ([link](https://github.com/ruslo/hunter/issues/75#issuecomment-197248511)) we can force the download to be from the cache (such that we may get the dependency without access to the source).

More discussion regarding different build caused by different OSes and toolchains can be seen [here](https://github.com/ruslo/hunter/issues/296).

Some reference that might be useful [1](https://docs.hunter.sh/en/latest/user-guides/hunter-user.html?highlight=hunter_disable_builds#uploading-binaries), [2](https://docs.hunter.sh/en/latest/user-guides/hunter-user/nexus-cache-server.html).

## Update regarding Hunter
Ruslan Baratov (Hunter writer) announced that the official maintenance has been closed since 25 August 2019 [(see here)](https://github.com/ruslo/hunter/issues/1921#issuecomment-524624824). This is not a really big issue in using hunter actually, especially if we are not using that much of public packages (because for private package we will need to manage it by ourselves anyway).

Though optionated, I think that hunter is not really mature yet and also the documentation is not really complete yet. One of the major setback in using hunter is the integration with Nexus is really "raw", in a sense that it just push the cache "raw"-ly. [(see here)](https://docs.hunter.sh/en/latest/user-guides/hunter-user/nexus-cache-server.html?highlight=nexus).

So I tried to explore other tools that could fulfil my needs better.

## Terminologies
### Packages vs Dependencies
Dependencies just means the software or module needed by the main module in order to run properly. Packages has a more specific meaning that it just not contain the software itself, but also the meta data, especially on how it can be installed and also usually it will have the interfacing to the package manager.

### Package Manager
As mentioned above, we can deduce the use of the package manager is to be able to find packages and do necessary installation of the packages. And it also need to handle the upgrading, configuring and removing of the packages as defined in the [wikipedia page](https://en.wikipedia.org/wiki/Package_manager)

### Dependency Manager
Than what is actually a dependency manager? In the gradle documentation [page](https://docs.gradle.org/current/userguide/introduction_dependency_management.html#introduction_dependency_management), it is suggested that the role is to resolve and help the usage of the declared dependency in automated fashion. This is actually not really different than package. But we can get the gist of dependency here means something more specific as a 'component' (usually JAR files in Java). And not really something to be installed.

### So what is Hunter then?
In the [official documentation](https://docs.hunter.sh/en/latest/), it is a package manager for C/C++ projects.
