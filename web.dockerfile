FROM nginx:1.17-alpine

COPY ./.docker/nginx.conf /etc/nginx/conf.d/default.conf
