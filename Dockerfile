FROM oracle/graalvm-ce:20.0.0-java11 as builder

WORKDIR /app
COPY . /app

RUN gu install native-image

RUN curl -L -o musl.tar.gz https://github.com/gradinac/musl-bundle-example/releases/download/v1.0/musl.tar.gz && \
    tar -xvzf musl.tar.gz

RUN ./mvnw package -Pnative


FROM scratch

COPY --from=builder /app/target/*-runner /hello-quarkus

ENTRYPOINT ["/hello-quarkus"]
