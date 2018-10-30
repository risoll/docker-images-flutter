FROM cirrusci/android-sdk:27

RUN sudo apt-get update \
    && sudo apt-get install -y --allow-unauthenticated --no-install-recommends lib32stdc++6 libstdc++6 libglu1-mesa locales \
    && sudo rm -rf /var/lib/apt/lists/*

RUN sudo locale-gen en_US "en_US.UTF-8" \
    && sudo dpkg-reconfigure locales

ENV LANG en_US.UTF-8

ENV FLUTTER_HOME ${HOME}/sdks/flutter
ENV FLUTTER_VERSION 0.10.1

RUN git clone --branch v${FLUTTER_VERSION} https://github.com/flutter/flutter.git ${FLUTTER_HOME}

ENV PATH ${PATH}:${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin

# 暫定対応 flutter 0.10.1はgoogle()に対応してないため
# TODO: 以降のバージョンで対応された削除すること
COPY flutter.gradle ${FLUTTER_HOME}/packages/flutter_tools/gradle/flutter.gradle


# doctor
RUN flutter doctor