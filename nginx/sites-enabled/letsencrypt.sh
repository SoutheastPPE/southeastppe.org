docker run -it --rm --name certbot \
  -v ./letsencrypt:/etc/letsencrypt \
  -v ./letsencrypt/log:/var/log/letsencrypt \
  -p 80:80 \
  certbot/certbot -t certonly \
  --standalone \
  --email noah@southeastppe.org \
  --no-eff-email \
  --agree-tos --renew-by-default \
  -d southeastppe.org,www.southeastppe.org;