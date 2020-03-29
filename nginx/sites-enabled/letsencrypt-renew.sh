# Pull the latest versions of Ghost & MySQL
docker-compose pull;

# Bring down the cluster
docker-compose down;

# Run the script to renew the certs
./letsencrypt.sh;

docker-compose up -d;
# Raise the cluster back up