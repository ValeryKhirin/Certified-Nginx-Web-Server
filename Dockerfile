FROM nginx:1.23.3-alpine

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./html/ /usr/share/nginx/html/
COPY ./certs/ /etc/nginx/ssl/
COPY ./certs/valery.com.pem /usr/local/share/ca-certificates/my-cert.crt

RUN cat /usr/local/share/ca-certificates/my-cert.crt >> /etc/ssl/certs/ca-certificates.crt
