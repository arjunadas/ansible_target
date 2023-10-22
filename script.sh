### start
d=$(date)

cat << EOF > /tmp/django/index.html
<html>
<head>
<title>example1</title>
</head>
<body>
<H1>$d</H1>
</body>
</html>
EOF

cat << EOF > /tmp/django/Dockerfile
FROM prakhar1989/static-site
COPY /tmp/django/index.html /usr/share/nginx/html/
EOF

docker build -t myproject2 .
### finish
