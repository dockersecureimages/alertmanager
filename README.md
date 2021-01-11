# Alertmanager

Alertmanager, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~59MB)

Security scanning using Clair
```
clair-scanner secureimages/alertmanager:0.21.0-alpine-3.12.3
2021/01/11 09:28:17 [INFO] ▶ Start clair-scanner
2021/01/11 09:28:18 [INFO] ▶ Server listening on port 9279
2021/01/11 09:28:18 [INFO] ▶ Analyzing 239a994d90a30d28d70001f62415dabc8636df0ebb561fe4d6c1b4b1d4a6cbcf
2021/01/11 09:28:18 [INFO] ▶ Analyzing 1a9035bffaf0472b3417a5b7ecd3b6023a6bb98de098cf37c30aa6d700576e69
2021/01/11 09:28:18 [INFO] ▶ Analyzing 9067ee9ee07426bafcff7872ea24525ce934f7e0ff4a7d0b0cba3783e804646d
2021/01/11 09:28:18 [INFO] ▶ Analyzing 669db4bdfd80d31ad885c0a06c7a38c1ff3ca12bb7b2c98c44498efb8727e4db
2021/01/11 09:28:18 [INFO] ▶ Analyzing a93d8cc137c3465638b6b8db95e4b12f6cc7a4feb0846453034ddafb22791845
2021/01/11 09:28:18 [INFO] ▶ Image [secureimages/alertmanager:0.21.0-alpine-3.12.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.15.0 --no-progress secureimages/alertmanager:0.21.0-alpine-3.12.3
2021-01-11T09:28:24.342Z        INFO    Need to update DB
2021-01-11T09:28:24.342Z        INFO    Downloading DB...
2021-01-11T09:28:28.995Z        INFO    Detecting Alpine vulnerabilities...
2021-01-11T09:28:28.996Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/alertmanager:0.21.0-alpine-3.12.3 (alpine 3.12.3)
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
2021/01/11 09:28:35 [INFO] ▶ Start clair-scanner
2021/01/11 09:28:36 [INFO] ▶ Server listening on port 9279
2021/01/11 09:28:36 [INFO] ▶ Analyzing cade0ab73f0397f3c5a9a1ffa76e0f02d2296cd84d90174c53fd4f85c3cf8c12
2021/01/11 09:28:36 [INFO] ▶ Analyzing ae13d90b3184f76eae9c9a41a888d968b72543a3692aca815343e9dc34081c6f
2021/01/11 09:28:36 [INFO] ▶ Analyzing 168fd776d754e7b31a88c74c0ef14af764286af1af619b16280ddab39ef954ac
2021/01/11 09:28:36 [INFO] ▶ Analyzing ab930021cc8a75c80c7dbc82e9a33fa6a783b7ac4df4d44fd17decea8cad988a
2021/01/11 09:28:36 [INFO] ▶ Analyzing cc76384b40da50fe2fac3d5c0abc21728131b7c3a41d6fec28a4b8b2a27f7b9c
2021/01/11 09:28:36 [INFO] ▶ Analyzing 97820298ccdb438cfa9ecb30d8ab7119cd3275537bd6fa52937d1fa4ffdac022
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.15.0 --no-progress prom/alertmanager:v0.21.0
2021-01-11T09:28:41.702Z        INFO    Need to update DB
2021-01-11T09:28:41.702Z        INFO    Downloading DB...
2021-01-11T09:28:47.212Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-01-11T09:28:47.212Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
