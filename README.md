## Use with Docker

To run with docker:

1. Run ```docker build -t ois/nginx-temperature .``` to build docker image.
2. Run ```docker-compose up -d nginx-temperature``` to run docker image.
3. Open browser ```http://localhost:3380```
4. Run ```docker-compose down``` to stop docker.

## Refs
https://dev.to/ishankhare07/nginx-as-reverse-proxy-for-a-flask-app-using-docker-3ajg