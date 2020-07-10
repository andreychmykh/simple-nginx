# Deploy the app to NGINX
FROM nginx:alpine

## Replace the conf file to support SSL
COPY ./nginx.conf /etc/nginx/nginx.conf

## Make sure that the cert and key are in the app
COPY ./local.crt /etc/ssl/server.crt
COPY ./local.key /etc/ssl/server.key

ENTRYPOINT ["nginx", "-g", "daemon off;"]