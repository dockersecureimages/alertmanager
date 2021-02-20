# Alertmanager

Alertmanager, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~59MB)

Security scanning using Clair
```
clair-scanner secureimages/alertmanager:0.21.0-alpine-3.13.2
2021/02/20 15:17:29 [INFO] ▶ Start clair-scanner
2021/02/20 15:17:30 [INFO] ▶ Server listening on port 9279
2021/02/20 15:17:30 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 15:17:30 [INFO] ▶ Analyzing 8edf07397ee8857d4f60cab6e4fd0a514dac664f477919c0183f94e712d5b05e
2021/02/20 15:17:30 [INFO] ▶ Analyzing 94202d770d0b9428a9ab82ddaf493950442f7340aefc3499ffe6b50f2660c670
2021/02/20 15:17:30 [INFO] ▶ Analyzing f9eb14cd2c0a45950d4930ee1e0fd3808a6a926b1b5eec9141fdd7c9d9abad72
2021/02/20 15:17:30 [INFO] ▶ Analyzing e72169c00d02ba3883e7689c57839ec3bc3a5671d2077181ee61841d58ccc7a1
2021/02/20 15:17:30 [WARN] ▶ Image [secureimages/alertmanager:0.21.0-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 15:17:30 [ERRO] ▶ Image [secureimages/alertmanager:0.21.0-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/alertmanager:0.21.0-alpine-3.13.2
2021-02-20T15:17:34.202Z        INFO    Need to update DB
2021-02-20T15:17:34.202Z        INFO    Downloading DB...
2021-02-20T15:17:37.935Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T15:17:37.936Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/alertmanager:0.21.0-alpine-3.13.2 (alpine 3.13.2)
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
2021/02/20 15:17:43 [INFO] ▶ Start clair-scanner
2021/02/20 15:17:44 [INFO] ▶ Server listening on port 9279
2021/02/20 15:17:44 [INFO] ▶ Analyzing cade0ab73f0397f3c5a9a1ffa76e0f02d2296cd84d90174c53fd4f85c3cf8c12
2021/02/20 15:17:44 [INFO] ▶ Analyzing ae13d90b3184f76eae9c9a41a888d968b72543a3692aca815343e9dc34081c6f
2021/02/20 15:17:44 [INFO] ▶ Analyzing 168fd776d754e7b31a88c74c0ef14af764286af1af619b16280ddab39ef954ac
2021/02/20 15:17:44 [INFO] ▶ Analyzing ab930021cc8a75c80c7dbc82e9a33fa6a783b7ac4df4d44fd17decea8cad988a
2021/02/20 15:17:44 [INFO] ▶ Analyzing cc76384b40da50fe2fac3d5c0abc21728131b7c3a41d6fec28a4b8b2a27f7b9c
2021/02/20 15:17:44 [INFO] ▶ Analyzing 97820298ccdb438cfa9ecb30d8ab7119cd3275537bd6fa52937d1fa4ffdac022
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/alertmanager:v0.21.0
2021-02-20T15:17:49.718Z        INFO    Need to update DB
2021-02-20T15:17:49.718Z        INFO    Downloading DB...
2021-02-20T15:17:53.299Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-02-20T15:17:53.299Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
