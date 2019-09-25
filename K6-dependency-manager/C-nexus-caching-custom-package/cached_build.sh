echo "[remove current build folder]"
rm -rf _builds

echo "[remove hunter cache]"
rm -rf ~/.hunter/_Base/

echo "[building]"
export CACHE_REPOSITORY_URL="http://localhost:8081/nexus/content/sites/test-repo/"
export USE_CACHE_SERVER="ONLY"
cmake -H. -B_builds