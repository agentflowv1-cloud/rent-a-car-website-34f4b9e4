FROM nginx:1.25-alpine
WORKDIR /usr/share/nginx/html
COPY . .
RUN printf 'server {
  listen 8080;
  server_name _;
  root /usr/share/nginx/html;
  index index.html index.htm;
  try_files $uri $uri/ /index.html;
}
' > /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
