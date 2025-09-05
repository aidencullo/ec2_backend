TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" \
  -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")
curl -H "X-aws-ec2-metadata-token: $TOKEN"   http://169.254.169.254/latest/meta-data/public-ipv4
python3 -m http.server 80
chmod 400 key.pem
python3 -m http.server 8080  # simple HTTP server
python3 -m http.server 80
python3 -m http.server 8080  # simple HTTP server
scp -i key.pem /path/to/x ec2-user@ec2-3-15-9-102.us-east-2.compute.amazonaws.com:~
exit
