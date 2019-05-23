ARG OPENJDK_VERSION=8u212
FROM openjdk:${OPENJDK_VERSION}-slim

ARG SBT_VERSION=1.2.8

# Install libs & Set Locales
RUN set -ex \
    && apt-get update -yqq \
    && apt-get upgrade -yqq \
    && DEBIAN_FRONTEND=noninteractive apt-get install -yqq wget locales \
    && sed -i 's/^# en_US.UTF-8 UTF-8$/en_US.UTF-8 UTF-8/g' /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 \
    && apt-get autoremove -yqq --purge \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Define en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
ENV LC_MESSAGES en_US.UTF-8

# Install SBT
RUN set -ex \
    && wget "https://dl.bintray.com/sbt/debian/sbt-${SBT_VERSION}.deb" \
    && dpkg -i sbt-$SBT_VERSION.deb \
    && apt-get update \
    && apt-get install sbt \
    && sbt sbtVersion