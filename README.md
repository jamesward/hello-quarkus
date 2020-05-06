Hello Quarkus
-------------

Run Locally:
```
./mvnw quarkus:dev
```

Containerize Locally as a GraalVM native image:
```
docker build -t hello-quarkus .
```

Run container:
```
docker run -p8080:8080 hello-quarkus
```

Run on Cloud Run:

[![Run on Google Cloud](https://deploy.cloud.run/button.svg)](https://deploy.cloud.run)
