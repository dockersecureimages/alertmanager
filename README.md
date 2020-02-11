# Alertmanager

Alertmanager, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/alertmanager:0.20.0-alpine-3.11.3
2020/02/11 16:49:32 [INFO] ▶ Start clair-scanner
2020/02/11 16:49:32 [INFO] ▶ Server listening on port 9279
2020/02/11 16:49:32 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/11 16:49:32 [INFO] ▶ Analyzing 8ff446312f715fdce50e935f8450803c8112dd9eacf6101e7fe52e41e19ec097
2020/02/11 16:49:32 [INFO] ▶ Analyzing e32c595c0fd3a1ad4236b449ce235253d893b69f255b7152104acbe66cca8f62
2020/02/11 16:49:32 [INFO] ▶ Analyzing 8b64862b20ea9ee858676c2584277594fbb181ec1ff52b4cbf0370c16ef0e2fa
2020/02/11 16:49:32 [INFO] ▶ Analyzing 38b56a1a936d8ad6da41c89ae68adf0623a6d7dbfe68f339138773dcd846d71d
2020/02/11 16:49:32 [INFO] ▶ Image [secureimages/alertmanager:0.20.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/alertmanager:0.20.0-alpine-3.11.3
2020-02-11T14:49:44.845Z        INFO    Need to update DB
2020-02-11T14:49:44.845Z        INFO    Downloading DB...
2020-02-11T14:49:48.822Z        INFO    Reopening DB...
2020-02-11T14:49:49.856Z        INFO    Detecting Alpine vulnerabilities...

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
2020/02/11 16:50:02 [INFO] ▶ Start clair-scanner
2020/02/11 16:50:03 [INFO] ▶ Server listening on port 9279
2020/02/11 16:50:03 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/02/11 16:50:03 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/02/11 16:50:03 [INFO] ▶ Analyzing 14ebf547fc7775fbd15e29594e81d6995ad49c3dcf4a74cfe5b2390f5f393633
2020/02/11 16:50:03 [INFO] ▶ Analyzing 6531f973e7db9c9263b242e4d0916dc1b62199d82c831aa98dc7a19952c529ff
2020/02/11 16:50:03 [INFO] ▶ Analyzing 70744df550d4d777494953d23795a7aad178e9480ca1bfea08b506733c1e0192
2020/02/11 16:50:04 [INFO] ▶ Analyzing 47107ae565cdcc02b8b3c5405c0015f500086616ea448b0ebd6d459756a497d0
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress prom/alertmanager:v0.20.0
2020-02-11T14:50:09.914Z        INFO    Need to update DB
2020-02-11T14:50:09.914Z        INFO    Downloading DB...
2020-02-11T14:50:13.877Z        INFO    Reopening DB...
2020-02-11T14:50:14.760Z        FATAL   error in image scan: failed to scan the image: failed to analyze OS: Unknown OS
```
