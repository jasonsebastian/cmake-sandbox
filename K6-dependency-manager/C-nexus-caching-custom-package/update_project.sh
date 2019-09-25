wget https://github.com/kwinata/dummy-cmake-project/archive/master.zip
sha_result=$(openssl sha1 master.zip | grep '[a-z0-9]\{8,\}' -o)
rm master.zip
echo "SHA Before"
cat hunter/cmake/projects/dummy-cmake-project/hunter.cmake | grep 'SHA1 [a-z0-9]\{8,\}'
sed -i '' "s/SHA1 [a-z0-9]\{8,\}/SHA1 $sha_result/g" hunter/cmake/projects/dummy-cmake-project/hunter.cmake
echo "SHA After"
cat hunter/cmake/projects/dummy-cmake-project/hunter.cmake | grep 'SHA1 [a-z0-9]\{8,\}'

cd hunter
    git commit -am "Update SHA"
    git push
cd ..

wget https://github.com/kwinata/hunter/archive/master.zip
sha_result=$(openssl sha1 master.zip | grep '[a-z0-9]\{8,\}' -o)
rm master.zip
sed -i '' "s/SHA1 [a-z0-9]\{8,\}/SHA1 $sha_result/g" CMakeLists.txt