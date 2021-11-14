FROM google/dart

WORKDIR /app

ADD pubspec.* /app/
RUN pub get
ADD . /app
RUN pub get --offline

ENV PORT 5000
EXPOSE 5000
ENTRYPOINT ["/usr/bin/dart", "bin/server.dart"]
