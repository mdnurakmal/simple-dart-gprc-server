FROM google/dart

WORKDIR /app
COPY . .
RUN pub get 

ENV PORT 5000
CMD []

ENTRYPOINT ["/usr/bin/dart", "bin/server.dart"]
