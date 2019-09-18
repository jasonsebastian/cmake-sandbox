# 07-conan-package-manager

## Using Conan

Notice that in the previous section we used hunter as our package manager (with Nexus as the build cache). But later I found out that there are some drawbacks of using hunter. The biggest one is because of it lacks of support. Since 25 Aug 2019, the author of hunter has stopped official support, and however the support has not been so high before that. This lack of support causes lack of documentation. Thus it is relatively difficult to use. The other thing is that it is quite difficult to add custom package to the hunter.

Therefore I tried to look at other potential alterinatives. Conan looks interesting because of its good support, then also being well known and talked a lot in conferences. Conan is backed by JFrog which dedicatedly maintains it and other supporting environments, particularly Artifactory and Bintray which can be very useful for later use.

## Todos
- [ ] A-getting-started (WIP)
- [ ] B-main-add-subtract-module-model (WIP)
- [ ] C-binary-only-dependencies
- [ ] D-docker-jenkins-on-main-add-subtract
