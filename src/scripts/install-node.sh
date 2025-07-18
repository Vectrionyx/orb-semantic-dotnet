# shellcheck shell=bash
TAG=$(circleci env subst "${NODE_VERSION}")

apt-get update 
apt-get install -y ca-certificates curl gnupg

mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_${TAG-'20.x'} nodistro main" > /etc/apt/sources.list.d/nodesource.list

apt-get update
apt-get install -y nodejs
