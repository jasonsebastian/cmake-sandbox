# 06/A-open-from-source

The example here mimics [this example](https://github.com/ruslo/hunter/tree/master/examples/half).

``` shell
-- Detecting CXX compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /Users/winata/.hunter/_Base/e14bc15/7e73122/3113548/Build/half/Build/half-Release-prefix/src/half-Release-build
[ 37%] Performing build step for 'half-Release'
[ 43%] Performing install step for 'half-Release'
Install the project...
-- Install configuration: "Release"
-- Installing: /Users/winata/.hunter/_Base/e14bc15/7e73122/3113548/Build/half/Install/include/half
-- Installing: /Users/winata/.hunter/_Base/e14bc15/7e73122/3113548/Build/half/Install/include/half/half.hpp
-- Installing: /Users/winata/.hunter/_Base/e14bc15/7e73122/3113548/Build/half/Install/lib/cmake/half/halfConfig.cmake
-- Installing: /Users/winata/.hunter/_Base/e14bc15/7e73122/3113548/Build/half/Install/lib/cmake/half/halfConfigVersion.cmake
-- Installing: /Users/winata/.hunter/_Base/e14bc15/7e73122/3113548/Build/half/Install/lib/cmake/half/halfTargets.cmake
loading initial cache file /Users/winata/.hunter/_Base/e14bc15/7e73122/3113548/Build/half/args.cmake
[ 50%] Completed 'half-Release'
[ 50%] Built target half-Release
...
```

Notice that the dependencies is built during configure time.