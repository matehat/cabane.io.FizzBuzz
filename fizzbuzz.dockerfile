FROM google/dart

WORKDIR /app

ADD fizz_and_buzz/pubspec.* /app/
RUN pub get
ADD fizz_and_buzz/ /app
RUN pub get --offline

CMD []
ENTRYPOINT ["/usr/bin/dart", "src/server.dart"]
