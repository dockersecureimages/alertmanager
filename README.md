# Alertmanager

Alertmanager, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~59MB)

Security scanning using Clair
```
clair-scanner secureimages/alertmanager:0.21.0-alpine-3.13.5
2021/04/16 08:29:43 [INFO] ▶ Start clair-scanner
2021/04/16 08:29:44 [INFO] ▶ Server listening on port 9279
2021/04/16 08:29:44 [INFO] ▶ Analyzing d09376239d873ace0c02b1b53834f0fe3167a652a8fc436465db0171eb639b61
2021/04/16 08:29:44 [INFO] ▶ Analyzing 27b1bb08189649fde9e58aabdcb7f921a5b2b786ef69bf8ac6eee89a6e26864a
2021/04/16 08:29:44 [INFO] ▶ Analyzing 5859e9b34ec5ba2877dbe3410cb45a531e5aea9aec8b08128a9b2c7868d54456
2021/04/16 08:29:44 [INFO] ▶ Analyzing 3a9ca17858d51706f4f925371692c7eef0abd2896dfaf5bb574cf7ff14042473
2021/04/16 08:29:44 [INFO] ▶ Analyzing b41394788815e9dd9290ba9c726ecfe7e84eb37472a3f2d1c770b944db29b1ef
2021/04/16 08:29:44 [WARN] ▶ Image [secureimages/alertmanager:0.21.0-alpine-3.13.5] contains 1 total vulnerabilities
2021/04/16 08:29:44 [ERRO] ▶ Image [secureimages/alertmanager:0.21.0-alpine-3.13.5] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/alertmanager:0.21.0-alpine-3.13.5
2021-04-16T08:29:49.933Z        INFO    Need to update DB
2021-04-16T08:29:49.934Z        INFO    Downloading DB...
2021-04-16T08:29:53.447Z        INFO    Detecting Alpine vulnerabilities...
2021-04-16T08:29:53.448Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/alertmanager:0.21.0-alpine-3.13.5 (alpine 3.13.5)
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
2021/04/16 08:29:59 [INFO] ▶ Start clair-scanner
2021/04/16 08:30:00 [INFO] ▶ Server listening on port 9279
2021/04/16 08:30:00 [INFO] ▶ Analyzing cade0ab73f0397f3c5a9a1ffa76e0f02d2296cd84d90174c53fd4f85c3cf8c12
2021/04/16 08:30:00 [INFO] ▶ Analyzing ae13d90b3184f76eae9c9a41a888d968b72543a3692aca815343e9dc34081c6f
2021/04/16 08:30:00 [INFO] ▶ Analyzing 168fd776d754e7b31a88c74c0ef14af764286af1af619b16280ddab39ef954ac
2021/04/16 08:30:00 [INFO] ▶ Analyzing ab930021cc8a75c80c7dbc82e9a33fa6a783b7ac4df4d44fd17decea8cad988a
2021/04/16 08:30:00 [INFO] ▶ Analyzing cc76384b40da50fe2fac3d5c0abc21728131b7c3a41d6fec28a4b8b2a27f7b9c
2021/04/16 08:30:00 [INFO] ▶ Analyzing 97820298ccdb438cfa9ecb30d8ab7119cd3275537bd6fa52937d1fa4ffdac022
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/alertmanager:v0.21.0
2021-04-16T08:30:04.536Z        INFO    Need to update DB
2021-04-16T08:30:04.536Z        INFO    Downloading DB...
2021-04-16T08:30:07.536Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-04-16T08:30:07.536Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
