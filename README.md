# Southeast Personal Protective Equipment

Containerized infrastructure for [southeastppe.org](https://southeastppe.org)

## Hosting

- VPS
  - AWS Lightsail instance running Debian 9.
- Static files
  - S3 bucket (Public facing, for PDFs & other user-uploadable content at scale)
  - Nginx (misc site images & docs for dev use; version controlled)

## Stack & Topology

```
  Nginx
    │
    ├── Ghost <────> MySQL
    │   
    └── Static Files
        ├── doc1.pdf
        ├── doc2.pdf
        ├── image1.jpg
        └── image2.jpg
```

Nginx is deployed in dual-role:

1. Placed in front of Ghost as reverse proxy handling TLS.
2. Serving static objects in `/static` folder.

Ghost is deployed with a MySQL database.

Networks are separated into:

- `reverse_proxy_net` connecting Nginx <──> Ghost
- `db_net` connecting Ghost <──> MySQL
