FROM openjdk:11-jdk-slim as build

ADD https://github.com/sbt/sbt/releases/download/v1.6.1/sbt-1.6.1.tgz sbt.tar.gz
RUN tar --strip-components 1 -xf sbt.tar.gz

ARG APPLICATION_SECRET=$APPLICATION_SECRET

WORKDIR /build
COPY ./play-scala-hello-world-tutorial .
RUN sbt universal:packageZipTarball

FROM openjdk:11-jre-slim as run

COPY --from=build /build/target/universal/*.tgz .

RUN tar xf *.tgz --strip-components 1

ENTRYPOINT [ "/bin/play-scala-hello-world-tutorial" ]