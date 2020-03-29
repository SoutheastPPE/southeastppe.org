docker run -it --rm --name certbot \
  -v /etc/letsencrypt:/etc/letsencrypt \
  -v /etc/letsencrypt/log:/var/log/letsencrypt \
  -p 80:80 \
  certbot/certbot -t certonly \
  --standalone \
  --email noah@southeastppe.org \
  --no-eff-email \
  --agree-tos --renew-by-default \
  -d southeastppe.org,www.southeastppe.org;