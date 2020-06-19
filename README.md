# Alertmanager

Alertmanager, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~59MB)

Security scanning using Clair
```
clair-scanner secureimages/alertmanager:0.21.0-alpine-3.12.0
2020/06/19 21:45:12 [INFO] ▶ Start clair-scanner
2020/06/19 21:45:13 [INFO] ▶ Server listening on port 9279
2020/06/19 21:45:13 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/19 21:45:13 [INFO] ▶ Analyzing c5a18f063a231e56303669c8bc969f4c4f09fac89a7bb9137672f5c965161c79
2020/06/19 21:45:13 [INFO] ▶ Analyzing 585844ce94905a957985022da5bf8b46ab52ae41bf9cce5d2ab4643aa2d44c4c
2020/06/19 21:45:13 [INFO] ▶ Analyzing bbf409ba789c295d9b40fd2a4ee2ed1bd1258a5891ed14fef88b7a74a24229d3
2020/06/19 21:45:13 [INFO] ▶ Analyzing 0112935535299eca5546cc48bd9ba988ef10f78fb00e4d5cb5db2270398afd49
2020/06/19 21:45:13 [INFO] ▶ Image [secureimages/alertmanager:0.21.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/alertmanager:0.21.0-alpine-3.12.0
2020-06-19T18:45:18.020Z        INFO    Need to update DB
2020-06-19T18:45:18.020Z        INFO    Downloading DB...
2020-06-19T18:45:22.356Z        INFO    Detecting Alpine vulnerabilities...

secureimages/alertmanager:0.21.0-alpine-3.12.0 (alpine 3.12.0)
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
2020/06/19 21:45:40 [INFO] ▶ Start clair-scanner
2020/06/19 21:45:41 [INFO] ▶ Server listening on port 9279
2020/06/19 21:45:41 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/06/19 21:45:41 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/06/19 21:45:41 [INFO] ▶ Analyzing a27fb3efe36d20bec0933be054a3d5515934150984940a0169a05a004c73f816
2020/06/19 21:45:41 [INFO] ▶ Analyzing b97d786754cb5edf44705302f03bce47c9e4285f3c90e304f6f52df4717b65f6
2020/06/19 21:45:41 [INFO] ▶ Analyzing 868ead0146e9684f9ba80bed084d1931cde0a1fb59a358a2faf324200429033a
2020/06/19 21:45:41 [INFO] ▶ Analyzing 0fb8cdd1f31c97aa5d1f14e9bd8ab2cf53c2720d043bfed08ec0abff0952c13d
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress prom/alertmanager:v0.21.0
2020-06-19T18:45:48.488Z        INFO    Need to update DB
2020-06-19T18:45:48.488Z        INFO    Downloading DB...
2020-06-19T18:45:53.296Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
