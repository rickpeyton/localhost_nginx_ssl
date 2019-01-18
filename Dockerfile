FROM nginx:latest
RUN apt-get -y update && apt-get -y install openssl
WORKDIR /app
RUN openssl req \
  -new \
  -newkey rsa:4096 \
  -days 3650 \
  -nodes \
  -x509 \
  -subj "/C=US/ST=CA/L=SF/O=Docker-demo/CN=app.example.org" \
  -keyout localhost.key \
  -out localhost.cert
COPY nginx.conf /etc/nginx/nginx.conf
