Tạo Proxy Forward từ port 80 về 8080 cho gitlab
- Tạo file jenkins.conf trong thư muc /etc/nginx/conf.d  (Tên file có định dạng là name_file.conf)
- Nội dung trong file jenkins.conf

server {
  listen 80;
  server_name jenkins.nguyennn;
  location / {
    proxy_pass http://jenkins.nguyennn:8080;
    proxy_http_version 1.1;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection keep-alive;
    proxy_set_header Host $host;
    proxy_cache_bypass $http_upgrade;
    proxy_set_header X-Forwarded_For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
    }
}
