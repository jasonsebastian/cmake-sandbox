# 06/B-nexus-caching

## Set up the nexus using docker
``` shell
mkdir nexus-data && chown -R nexus-data
docker run -d -p 8081:8081 -v nexus-data:/sonatype-work --name nexus sonatype/nexus:oss
```
> make sure to add the `nexus-data` to your `.gitignore`
See more tips in [the official repo](https://github.com/sonatype/docker-nexus).

After you get your nexus server running, create a new repository of type `site` and name it `test-repo`
We will assume the usage of default credentials `admin:admin123`.

Run 
``` shell
sh build_and_upload_to_cache.sh
sh build_from_cache.sh
```

## Discussion
One biggest concern in using hunter is that most likely we will need the nexus repository binaries to be organized by hunter itself (the hunter to be run on Jenkins).