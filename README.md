## Use with Docker

To run with docker:

1. Run ```docker build -t ois/nginx-temperature .``` to build docker image.
2. Run ```docker-compose up -d nginx-temperature``` to run docker image.
3. Open browser ```http://localhost:3380```
4. Run ```docker-compose down``` to stop docker.

## Deploy a new version to GCP

```export PROJECT_ID=ois-project-95773```

```docker build -t gcr.io/${PROJECT_ID}/nginx-temperature:latest .```

```docker push gcr.io/${PROJECT_ID}/nginx-temperature:latest```

```kubectl set image deployment/nginx-temperature nginx-temperature=gcr.io/${PROJECT_ID}/nginx-temperature:latest```

Open browser ```http://34.89.148.214/´´´

## Restart service

```kubectl scale deployment nginx-temperature --replicas=0```

```kubectl scale deployment nginx-temperature --replicas=1```

## Refs
https://dev.to/ishankhare07/nginx-as-reverse-proxy-for-a-flask-app-using-docker-3ajg