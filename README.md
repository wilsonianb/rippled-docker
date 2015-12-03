# rippled-docker

Build rippled in a docker container and output binary

```
docker build -t rippled-docker .
docker run -e RIPPLED_REPO=https://github.com/ripple/rippled.git -e RIPPLED_COMMIT=develop -v <path-to-put-rippled>:/out rippled-docker
```
