# Alertmanager

Alertmanager, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~55.6MB)

Security scanning using Clair
```
clair-scanner secureimages/alertmanager:0.20.0-alpine-3.11.6
2020/04/25 11:33:47 [INFO] ▶ Start clair-scanner
2020/04/25 11:33:48 [INFO] ▶ Server listening on port 9279
2020/04/25 11:33:48 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 11:33:49 [INFO] ▶ Analyzing 8c18e1e752513917c35a22fec475d6a5fb6619bb59cdc5a85dd7791a2c5c0000
2020/04/25 11:33:49 [INFO] ▶ Analyzing 69afab54e4f581b7ebfffdd5fab0049da0e2b1102b2033f5f3631d7773474530
2020/04/25 11:33:49 [INFO] ▶ Analyzing 9186e67e2e7bfa0a508249d018c14525b37634c481fffdfbc10e367883dd29ec
2020/04/25 11:33:49 [INFO] ▶ Analyzing 9396f094329aa1e42b1a24cb24984f837c23fd2d56b3f64f9c37847bb49a2e08
2020/04/25 11:33:49 [INFO] ▶ Image [secureimages/alertmanager:0.20.0-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/alertmanager:0.20.0-alpine-3.11.6
2020-04-25T08:34:31.798Z        INFO    Need to update DB
2020-04-25T08:34:31.798Z        INFO    Downloading DB...
2020-04-25T08:34:37.053Z        INFO    Detecting Alpine vulnerabilities...

secureimages/alertmanager:0.20.0-alpine-3.11.6 (alpine 3.11.6)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~52.1MB)

[https://hub.docker.com/r/prom/alertmanager](https://hub.docker.com/r/prom/alertmanager)
```
docker pull prom/alertmanager:v0.20.0
```

Security scanning using Clair
```
clair-scanner prom/alertmanager:v0.20.0
2020/04/25 11:34:50 [INFO] ▶ Start clair-scanner
2020/04/25 11:34:52 [INFO] ▶ Server listening on port 9279
2020/04/25 11:34:52 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/04/25 11:34:52 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/04/25 11:34:52 [INFO] ▶ Analyzing 14ebf547fc7775fbd15e29594e81d6995ad49c3dcf4a74cfe5b2390f5f393633
2020/04/25 11:34:52 [INFO] ▶ Analyzing 6531f973e7db9c9263b242e4d0916dc1b62199d82c831aa98dc7a19952c529ff
2020/04/25 11:34:52 [INFO] ▶ Analyzing 70744df550d4d777494953d23795a7aad178e9480ca1bfea08b506733c1e0192
2020/04/25 11:34:53 [INFO] ▶ Analyzing 47107ae565cdcc02b8b3c5405c0015f500086616ea448b0ebd6d459756a497d0
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress prom/alertmanager:v0.20.0
2020-04-25T08:34:59.201Z        INFO    Need to update DB
2020-04-25T08:34:59.201Z        INFO    Downloading DB...
2020-04-25T08:35:03.860Z        FATAL   error in image scan: scan failed: failed to apply layers: unknown OS
```
