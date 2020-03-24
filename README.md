# Alertmanager

Alertmanager, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/alertmanager:0.20.0-alpine-3.11.5
2020/03/24 16:47:58 [INFO] ▶ Start clair-scanner
2020/03/24 16:47:59 [INFO] ▶ Server listening on port 9279
2020/03/24 16:47:59 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 16:47:59 [INFO] ▶ Analyzing ff05f3f3add4f4e9d8848363007db9f2ede7bfcf14241c65519e034f882e4bf0
2020/03/24 16:47:59 [INFO] ▶ Analyzing 7a1c04dbcb6bffa7fb4c96104eca0ddc853ddceb17df01432b3bdb610de477f0
2020/03/24 16:47:59 [INFO] ▶ Analyzing 6f58b3b9f8de8a543c4e4080e9b0d1ea8b69f6238ab131c4cb081a205f244f3d
2020/03/24 16:47:59 [INFO] ▶ Analyzing 290837974e6db4f6fa9d0ddc45ce51a950233941eec35b7e610e8d995a618404
2020/03/24 16:47:59 [INFO] ▶ Image [secureimages/alertmanager:0.20.0-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/alertmanager:0.20.0-alpine-3.11.5
2020-03-24T14:48:06.536Z        INFO    Need to update DB
2020-03-24T14:48:06.536Z        INFO    Downloading DB...
2020-03-24T14:48:10.705Z        INFO    Reopening DB...
2020-03-24T14:48:12.648Z        INFO    Detecting Alpine vulnerabilities...

secureimages/alertmanager:0.20.0-alpine-3.11.5 (alpine 3.11.5)
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
2020/03/24 16:48:17 [INFO] ▶ Start clair-scanner
2020/03/24 16:48:18 [INFO] ▶ Server listening on port 9279
2020/03/24 16:48:18 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/03/24 16:48:18 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/03/24 16:48:18 [INFO] ▶ Analyzing 14ebf547fc7775fbd15e29594e81d6995ad49c3dcf4a74cfe5b2390f5f393633
2020/03/24 16:48:18 [INFO] ▶ Analyzing 6531f973e7db9c9263b242e4d0916dc1b62199d82c831aa98dc7a19952c529ff
2020/03/24 16:48:18 [INFO] ▶ Analyzing 70744df550d4d777494953d23795a7aad178e9480ca1bfea08b506733c1e0192
2020/03/24 16:48:18 [INFO] ▶ Analyzing 47107ae565cdcc02b8b3c5405c0015f500086616ea448b0ebd6d459756a497d0
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress prom/alertmanager:v0.20.0
2020-03-24T14:48:24.620Z        INFO    Need to update DB
2020-03-24T14:48:24.620Z        INFO    Downloading DB...
2020-03-24T14:48:28.578Z        INFO    Reopening DB...
2020-03-24T14:48:29.628Z        FATAL   error in image scan: scan failed: failed to apply layers: unknown OS
```
