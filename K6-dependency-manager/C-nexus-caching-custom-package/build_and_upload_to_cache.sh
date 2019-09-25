echo "[Tips:] too see that it's actually uploaded, you can either check the modified time or delete the files in nexus before uploading"

echo "\n[remove current build folder]"
rm -rf _builds

echo "\n[remove hunter cache]"
rm -rf ~/.hunter/_Base/


echo "\n[building]"
export USE_CACHE_SERVER=NO
cmake -H. -B_builds || exit
echo "[finish building]"

export CACHE_REPOSITORY_URL="http://localhost:8081/nexus/content/sites/test-repo/"
nexuser=admin
nexpwd=admin123

echo "[upload to nexus]"
pushd ~/.hunter/_Base/Cache/meta
    find ./ -type f -exec curl -u $nexuser:$nexpwd --upload-file "{}" "$CACHE_REPOSITORY_URL/meta/{}" \;
    cd ../raw
    find ./ -type f -exec curl -u $nexuser:$nexpwd --upload-file "{}" "$CACHE_REPOSITORY_URL/raw/{}" \;
popd
echo "finish uploading"