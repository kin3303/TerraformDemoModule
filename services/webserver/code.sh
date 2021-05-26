#! /bin/bash

# Permission 755 필요
# index.html 을 생성후 비지박스라는 도구로 포트 8080 에서 웹 서버를 실행
# nohub 과 & 로 배시 스크립트가 종료되더라도 웹 서버가 백그라운드에서 영구적으로 실행됨

cat > index.html <<EOF
<h1>Hello, World</h1>
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
EOF

nohup busybox httpd -f -p ${server_port} &
