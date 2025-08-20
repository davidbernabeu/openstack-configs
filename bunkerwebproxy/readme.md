## Docker + Docker Compose + BunkerUI with Nginx Reverse Proxy

### 1. Install Docker and Docker Compose

```bash
# Update system
sudo dnf update -y

# Install dependencies
sudo dnf install -y dnf-plugins-core

# Add official Docker repo
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Check Docker version
docker --version

# (Optional) Install standalone docker-compose binary
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64" \
  -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Check docker-compose version
docker-compose --version
````

### 2. Create docker-compose.yml

### 3. Administrate Global Config in BunkerWebUI
  -> Login for admin user
  ````
  http://ip_server:7000
  ````
  -> configure custom certificate 
  ````
  (Optional)
  Save "cert.pem" and "key.pem" in /tmp/ and add in custom certificate configuration
  ````
  -> configure reverse proxy 
  ````
   REVERSE_PROXY_HOST=http://ip_nginx_server:80 or http://localhost:80 (depends where nginx server is)
  ````
