# Alertmanager

Alertmanager, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~59MB)

Security scanning using Clair
```
clair-scanner secureimages/alertmanager:0.21.0-alpine-3.13.4
2021/04/01 12:44:44 [INFO] ▶ Start clair-scanner
2021/04/01 12:44:45 [INFO] ▶ Server listening on port 9279
2021/04/01 12:44:45 [INFO] ▶ Analyzing e46e108285519ee26fa254dfaab29d7d350c0c321daa1350567c5202109138ca
2021/04/01 12:44:45 [INFO] ▶ Analyzing aa7d135d450c250c181656b27af455af8c3cac2a82e02ea8393999351d2ae629
2021/04/01 12:44:45 [INFO] ▶ Analyzing ef4bc0dc56fa24f28f63c57f24011cc2812a4a04a95352e1d05e9a6a27e4156e
2021/04/01 12:44:45 [INFO] ▶ Analyzing 7331f975072a1b99e1ba3655a464e8c3ab0a60a255a79164e9e54e17749c1d66
2021/04/01 12:44:45 [INFO] ▶ Analyzing c8d987dd82cc26bcb4c0f03b6ad916a6243216c786b267dbaa38f41936f9353c
2021/04/01 12:44:45 [WARN] ▶ Image [secureimages/alertmanager:0.21.0-alpine-3.13.4] contains 1 total vulnerabilities
2021/04/01 12:44:45 [ERRO] ▶ Image [secureimages/alertmanager:0.21.0-alpine-3.13.4] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/alertmanager:0.21.0-alpine-3.13.4
2021-04-01T12:44:50.714Z        INFO    Need to update DB
2021-04-01T12:44:50.714Z        INFO    Downloading DB...
2021-04-01T12:44:54.109Z        INFO    Detecting Alpine vulnerabilities...
2021-04-01T12:44:54.110Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/alertmanager:0.21.0-alpine-3.13.4 (alpine 3.13.4)
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
2021/04/01 12:44:59 [INFO] ▶ Start clair-scanner
2021/04/01 12:45:00 [INFO] ▶ Server listening on port 9279
2021/04/01 12:45:00 [INFO] ▶ Analyzing cade0ab73f0397f3c5a9a1ffa76e0f02d2296cd84d90174c53fd4f85c3cf8c12
2021/04/01 12:45:00 [INFO] ▶ Analyzing ae13d90b3184f76eae9c9a41a888d968b72543a3692aca815343e9dc34081c6f
2021/04/01 12:45:00 [INFO] ▶ Analyzing 168fd776d754e7b31a88c74c0ef14af764286af1af619b16280ddab39ef954ac
2021/04/01 12:45:00 [INFO] ▶ Analyzing ab930021cc8a75c80c7dbc82e9a33fa6a783b7ac4df4d44fd17decea8cad988a
2021/04/01 12:45:00 [INFO] ▶ Analyzing cc76384b40da50fe2fac3d5c0abc21728131b7c3a41d6fec28a4b8b2a27f7b9c
2021/04/01 12:45:00 [INFO] ▶ Analyzing 97820298ccdb438cfa9ecb30d8ab7119cd3275537bd6fa52937d1fa4ffdac022
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/alertmanager:v0.21.0
2021-04-01T12:45:04.943Z        INFO    Need to update DB
2021-04-01T12:45:04.943Z        INFO    Downloading DB...
2021-04-01T12:45:08.516Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-04-01T12:45:08.516Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
