FROM nginx:1.25-alpine
WORKDIR /usr/share/nginx/html
COPY . .
RUN printf 'server {\n  listen 8080;\n  server_name _;\n  root /usr/share/nginx/html;\n  index index.html index.htm;\n  try_files $uri $uri/ /index.html;\n}\n' > /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
