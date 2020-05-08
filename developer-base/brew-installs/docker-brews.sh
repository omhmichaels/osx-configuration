brew install docker
brew install docker-machine
brew services start docker-machine
brew install virtualbox  # Requires SystemPreferences intervention
docker-machine create default --virtualbox-cpu-count 6 --virtualbox-memory 8192

# Create "docker" group and put me in it
sudo dseditgroup -o create docker
sudo dseditgroup -o edit -a price -t user docker

# Run this to set environment before running docker
eval $(docker-machine env default)
