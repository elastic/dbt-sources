## Develop Using Docker

- Build the image from the Dockerfile
```bash
docker build --tag elastic-dbt:latest .
```
- Run and interactive container using the image.
```bash
docker container run -it elastic-dbt:latest /bin/bash
```
- Setup your credentials for authenicating with BQ 
  - If you need a service account please request one by email data@elastic.co
```bash
echo '{"your":"json"}' > keyfile.json
```
- Debug your connection to BQ
```bash
dbt debug --profiles-dir ./.dev
```
- Create a branch or swap to a branch your were previously working on and start spitting hot dbt fire.