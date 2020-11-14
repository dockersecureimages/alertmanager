# Alertmanager

Alertmanager, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~59MB)

Security scanning using Clair
```
clair-scanner secureimages/alertmanager:0.21.0-alpine-3.12.1
2020/11/14 15:42:42 [INFO] ▶ Start clair-scanner
2020/11/14 15:42:42 [INFO] ▶ Server listening on port 9279
2020/11/14 15:42:42 [INFO] ▶ Analyzing ff72598b05f57e6f83d56b858ba9783796e99aea2dcef391b3fa688c1e077ae5
2020/11/14 15:42:42 [INFO] ▶ Analyzing 6f19da90bbfd4308f5c703bd52b0a3dec726e1bfbca34a5d0219f784baaeef88
2020/11/14 15:42:42 [INFO] ▶ Analyzing e368388601c3fce824eb187bbd778672793ccf55872af335e11e03e889a6877d
2020/11/14 15:42:42 [INFO] ▶ Analyzing e8b4ce2e9f5ab7c3025ca64612e1de093e959184db888b25880ee237494b9826
2020/11/14 15:42:42 [INFO] ▶ Analyzing 58e32bb7b59f3be9d988522a4006db96c1a051adb3c46968991dfbc4cda39567
2020/11/14 15:42:42 [INFO] ▶ Image [secureimages/alertmanager:0.21.0-alpine-3.12.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/alertmanager:0.21.0-alpine-3.12.1
2020-11-14T15:42:48.293Z        INFO    Need to update DB
2020-11-14T15:42:48.293Z        INFO    Downloading DB...
2020-11-14T15:42:53.645Z        INFO    Detecting Alpine vulnerabilities...

secureimages/alertmanager:0.21.0-alpine-3.12.1 (alpine 3.12.1)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~55.5MB)

[https://hub.docker.com/r/prom/alertmanager](https://hub.docker.com/r/prom/alertmanager)
```
docker pull prom/alertmanager:v0.21.0
```

Security scanning using Clair
```
clair-scanner prom/alertmanager:v0.21.0
2020/11/14 15:42:59 [INFO] ▶ Start clair-scanner
2020/11/14 15:43:00 [INFO] ▶ Server listening on port 9279
2020/11/14 15:43:00 [INFO] ▶ Analyzing cade0ab73f0397f3c5a9a1ffa76e0f02d2296cd84d90174c53fd4f85c3cf8c12
2020/11/14 15:43:00 [INFO] ▶ Analyzing ae13d90b3184f76eae9c9a41a888d968b72543a3692aca815343e9dc34081c6f
2020/11/14 15:43:00 [INFO] ▶ Analyzing 168fd776d754e7b31a88c74c0ef14af764286af1af619b16280ddab39ef954ac
2020/11/14 15:43:00 [INFO] ▶ Analyzing ab930021cc8a75c80c7dbc82e9a33fa6a783b7ac4df4d44fd17decea8cad988a
2020/11/14 15:43:00 [INFO] ▶ Analyzing cc76384b40da50fe2fac3d5c0abc21728131b7c3a41d6fec28a4b8b2a27f7b9c
2020/11/14 15:43:00 [INFO] ▶ Analyzing 97820298ccdb438cfa9ecb30d8ab7119cd3275537bd6fa52937d1fa4ffdac022
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress prom/alertmanager:v0.21.0
2020-11-14T15:43:10.459Z        INFO    Need to update DB
2020-11-14T15:43:10.459Z        INFO    Downloading DB...
2020-11-14T15:43:16.210Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
