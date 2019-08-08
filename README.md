# Build Ldap in alpine

## Build docker

```bash
sh build.sh [name]
// Ex: sh build.sh openldap-alpine
```

## Build docker for kubernetes

```bash
sh build-gcloud.sh [host] [project_cloud] [name]
// Ex: sh build.sh gcr.io ntd-project openldap-alpine
```
