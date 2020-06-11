# Alertmanager

Alertmanager, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~55.5MB)

Security scanning using Clair
```
clair-scanner secureimages/alertmanager:0.20.0-alpine-3.12.0
2020/06/11 14:54:54 [INFO] ▶ Start clair-scanner
2020/06/11 14:54:54 [INFO] ▶ Server listening on port 9279
2020/06/11 14:54:54 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 14:54:54 [INFO] ▶ Analyzing 81c2afa4429f350e2ac5b61c92341a3546e186b12f79373e7afabb8dd31cf0eb
2020/06/11 14:54:54 [INFO] ▶ Analyzing 1f84548111eed4361125a3924e94fb3cf32761f02b2854958305963d2fd35cb4
2020/06/11 14:54:54 [INFO] ▶ Analyzing 6814a3efa366ca54fe32c202b23416d71ccdf5951811afe5a2c89d416734bbd9
2020/06/11 14:54:54 [INFO] ▶ Analyzing edc573f5dea276b2a43d34075fbce9a0e0bf409e861bf21886d5af5fa699591e
2020/06/11 14:54:54 [INFO] ▶ Image [secureimages/alertmanager:0.20.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/alertmanager:0.20.0-alpine-3.12.0
2020-06-11T11:54:59.771Z        INFO    Need to update DB
2020-06-11T11:54:59.771Z        INFO    Downloading DB...
2020-06-11T11:55:04.766Z        INFO    Detecting Alpine vulnerabilities...

secureimages/alertmanager:0.20.0-alpine-3.12.0 (alpine 3.12.0)
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
2020/06/11 14:55:15 [INFO] ▶ Start clair-scanner
2020/06/11 14:55:16 [INFO] ▶ Server listening on port 9279
2020/06/11 14:55:16 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/06/11 14:55:16 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/06/11 14:55:16 [INFO] ▶ Analyzing 14ebf547fc7775fbd15e29594e81d6995ad49c3dcf4a74cfe5b2390f5f393633
2020/06/11 14:55:16 [INFO] ▶ Analyzing 6531f973e7db9c9263b242e4d0916dc1b62199d82c831aa98dc7a19952c529ff
2020/06/11 14:55:16 [INFO] ▶ Analyzing 70744df550d4d777494953d23795a7aad178e9480ca1bfea08b506733c1e0192
2020/06/11 14:55:16 [INFO] ▶ Analyzing 47107ae565cdcc02b8b3c5405c0015f500086616ea448b0ebd6d459756a497d0
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress prom/alertmanager:v0.20.0
2020-06-11T11:55:24.229Z        INFO    Need to update DB
2020-06-11T11:55:24.229Z        INFO    Downloading DB...
2020-06-11T11:55:29.653Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
