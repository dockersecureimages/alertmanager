# Alertmanager

Alertmanager, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/alertmanager:0.20.0-alpine-3.11.3
2020/01/20 21:39:54 [INFO] ▶ Start clair-scanner
2020/01/20 21:39:55 [INFO] ▶ Server listening on port 9279
2020/01/20 21:39:55 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 21:39:55 [INFO] ▶ Analyzing 8ff446312f715fdce50e935f8450803c8112dd9eacf6101e7fe52e41e19ec097
2020/01/20 21:39:55 [INFO] ▶ Analyzing 1be25df156c6743b0a790684d30bfb0e1b1bb808e0288edb92dbd8591f4fd2e6
2020/01/20 21:39:55 [INFO] ▶ Analyzing 7ab09bf1065c72147cc2dd5378254d65dfd11cd90f450b92d1a5ac726f394bdf
2020/01/20 21:39:55 [INFO] ▶ Analyzing e89ebbf581b3c3fe9f625fa23278c58c337db33d2cf22c47e0d58e77782ecf9d
2020/01/20 21:39:55 [INFO] ▶ Image [secureimages/alertmanager:0.20.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/alertmanager:0.20.0-alpine-3.11.3
2020-01-20T19:40:13.329Z        INFO    Need to update DB
2020-01-20T19:40:13.329Z        INFO    Downloading DB...
2020-01-20T19:40:17.425Z        INFO    Reopening DB...
2020-01-20T19:40:18.419Z        INFO    Detecting Alpine vulnerabilities...

secureimages/alertmanager:0.20.0-alpine-3.11.3 (alpine 3.11.3)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/prom/alertmanager](https://hub.docker.com/r/prom/alertmanager)
```
docker pull prom/alertmanager:v0.20.0
```

Security scanning using Clair
```
clair-scanner prom/alertmanager:v0.20.0
2020/01/20 21:40:37 [INFO] ▶ Start clair-scanner
2020/01/20 21:40:38 [INFO] ▶ Server listening on port 9279
2020/01/20 21:40:38 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/01/20 21:40:38 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/01/20 21:40:38 [INFO] ▶ Analyzing 14ebf547fc7775fbd15e29594e81d6995ad49c3dcf4a74cfe5b2390f5f393633
2020/01/20 21:40:38 [INFO] ▶ Analyzing 6531f973e7db9c9263b242e4d0916dc1b62199d82c831aa98dc7a19952c529ff
2020/01/20 21:40:38 [INFO] ▶ Analyzing 70744df550d4d777494953d23795a7aad178e9480ca1bfea08b506733c1e0192
2020/01/20 21:40:38 [INFO] ▶ Analyzing 47107ae565cdcc02b8b3c5405c0015f500086616ea448b0ebd6d459756a497d0
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress prom/alertmanager:v0.20.0
2020-01-20T19:40:53.559Z        INFO    Need to update DB
2020-01-20T19:40:53.559Z        INFO    Downloading DB...
2020-01-20T19:40:57.468Z        INFO    Reopening DB...
2020-01-20T19:40:58.355Z        FATAL   error in image scan: failed to scan the image: failed to analyze OS: Unknown OS
```
