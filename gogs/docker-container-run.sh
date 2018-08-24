# Create local directory for volume.
mkdir -p /var/gogs

# Use `docker run` for the first time.
docker run --name=gogs -p 10022:22 -p 10080:3000 -v /var/gogs:/data gogs/gogs