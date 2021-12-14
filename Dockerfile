FROM nginx
RUN rm /etc/nginx/nginx.conf etc/nginx/conf.d/store.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY tls/cert.pem /etc/nginx/tls-config/cert.pem
COPY tls/key.pem /etc/nginx/tls-config/key.pem
COPY conf.d etc/nginx/conf.d
