FROM node:7.5.0

# gitbook-cliはwrapperなので、適当にサブコマンド実行して最新版のgitbookのインストールまでこのタイミングでやっておく
RUN npm install \
        gitbook-cli -g \
        && gitbook help


RUN apt-get update && \
    apt-get install -y \
            locales \
            less \
            --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=ja_JP.UTF-8

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:en
ENV LC_ALL ja_JP.UTF-8


WORKDIR /var/gitbook


EXPOSE 4000

CMD ["bash"]
