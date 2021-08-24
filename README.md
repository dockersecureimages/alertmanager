# Alertmanager

Alertmanager, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~55MB)

Security scanning using Clair
```
clair-scanner secureimages/alertmanager:0.22.2-alpine-3.14.1
2021/08/24 09:24:44 [INFO] ▶ Start clair-scanner
2021/08/24 09:24:45 [INFO] ▶ Server listening on port 9279
2021/08/24 09:24:45 [INFO] ▶ Analyzing 11cbe68173689fb732863a26e9c9217da15b278edc951dcae1effb426247f521
2021/08/24 09:24:45 [INFO] ▶ Analyzing 9c4cd200fa0fbb4037fad062f6cbdde9979d826780e0021e47bde77d70144b27
2021/08/24 09:24:45 [INFO] ▶ Analyzing 23c68e83be32b1a1dccc7af8b2249bebaef091c15e5557594d2f75d2c92e27f6
2021/08/24 09:24:45 [INFO] ▶ Analyzing a382209f29c453fa7ac11d96a50d85e807eb1a5356e76ec042381a6fd17c4379
2021/08/24 09:24:45 [INFO] ▶ Analyzing 877c4e45f3ec8cdf76b080d47d045223286f2c9768b6c2fa7eaa4fa63878500d
2021/08/24 09:24:45 [WARN] ▶ Image [secureimages/alertmanager:0.22.2-alpine-3.14.1] contains 1 total vulnerabilities
2021/08/24 09:24:45 [ERRO] ▶ Image [secureimages/alertmanager:0.22.2-alpine-3.14.1] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.19.2 --no-progress secureimages/alertmanager:0.22.2-alpine-3.14.1
2021-08-24T09:24:50.171Z        INFO    Need to update DB
2021-08-24T09:24:50.171Z        INFO    Downloading DB...
2021-08-24T09:24:53.432Z        INFO    Detected OS: alpine
2021-08-24T09:24:53.432Z        INFO    Detecting Alpine vulnerabilities...
2021-08-24T09:24:53.433Z        INFO    Number of language-specific files: 2
2021-08-24T09:24:53.433Z        INFO    Detecting gobinary vulnerabilities...

secureimages/alertmanager:0.22.2-alpine-3.14.1 (alpine 3.14.1)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)


bin/alertmanager (gobinary)
===========================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)


bin/amtool (gobinary)
=====================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~51.6MB)

[https://hub.docker.com/r/prom/alertmanager](https://hub.docker.com/r/prom/alertmanager)
```
docker pull prom/alertmanager:v0.22.2
```

Security scanning using Clair
```
clair-scanner prom/alertmanager:v0.22.2
2021/08/24 09:24:58 [INFO] ▶ Start clair-scanner
2021/08/24 09:24:59 [INFO] ▶ Server listening on port 9279
2021/08/24 09:24:59 [INFO] ▶ Analyzing ccdc8d17c85badb2d49ffd2e13a368677b69bdb27ef6080b968472ad81342ece
2021/08/24 09:24:59 [INFO] ▶ Analyzing 3e11f1a7fb6fffaeac4f8008521afeeb60ef96697a8b9bcb90fe67ee6279ae45
2021/08/24 09:24:59 [INFO] ▶ Analyzing 78dd935cef192a3da12b46a51545fb559aa1332bd7f98ae24a94079e71202ae6
2021/08/24 09:24:59 [INFO] ▶ Analyzing 800e2cead6f3ca9233dd3430374fe1720df83db292b27a52646410bf4ff1e431
2021/08/24 09:24:59 [INFO] ▶ Analyzing f908fef25573ebbdd063db79e255806c54ae9dac536b08c24d595babb653741d
2021/08/24 09:24:59 [INFO] ▶ Analyzing 4deacf2efa590677656769a240ac47a2c6d672e1dce22d8ec470989f5376c64e
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.19.2 --no-progress prom/alertmanager:v0.22.2
2021-08-24T09:25:04.301Z        INFO    Need to update DB
2021-08-24T09:25:04.301Z        INFO    Downloading DB...
2021-08-24T09:25:08.771Z        INFO    Number of language-specific files: 2
2021-08-24T09:25:08.771Z        INFO    Detecting gobinary vulnerabilities...

bin/alertmanager (gobinary)
===========================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)


bin/amtool (gobinary)
=====================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
