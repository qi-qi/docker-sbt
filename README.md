# docker-sbt
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/qiqi/sbt.svg)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/qiqi/sbt.svg)

- OpenJDK 8u212
    - Docker Image: [openjdk:8u212-slim](https://hub.docker.com/_/openjdk)
- SBT 1.2.8
    - Package Repo: [https://dl.bintray.com/sbt/debian/sbt-1.2.8.deb](https://dl.bintray.com/sbt/debian/sbt-1.2.8.deb)

# Requirement
- Docker
    - [https://www.docker.com](https://www.docker.com)

# Usage
Run `sbt shell`
```
docker run -it --rm qiqi/sbt sbt shell
```