FROM google/dart

WORKDIR /app

ADD pubspec.* /app/
RUN pub get
ADD . /app
RUN pub get --offline

ENV PORT 443
EXPOSE 443/tcp
ENTRYPOINT ["/usr/bin/dart", "bin/server.dart"]
