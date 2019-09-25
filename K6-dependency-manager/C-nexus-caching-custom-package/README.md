# 06/C-nexus-caching-custom-package

The key of having a custom `HunterGate`. The HunterGate specified serve as the repository of all packages that can be added in the `hunter_add_package` command.

## Todo
- [ ] Fix error cannot download HunterGate from forked repo
- [ ] Add proper configuration to hunterized package (see [example](https://github.com/hunterbox/hunter_box_1/blob/master/CMakeLists.txt))

## Discussion

Apparently there's [some issue](https://github.com/ruslo/hunter/issues/1032) with Github archiving system such that the SHA1 is inconsistent.