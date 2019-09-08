FROM nginx:alpine

RUN apk update
RUN apk add bash
RUN apk add curl

ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN chmod 777 -R /var/cache/nginx
RUN chmod 775 -R /var/run
RUN chmod 775 -R /var/log/nginx

COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
