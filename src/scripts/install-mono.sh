# shellcheck shell=bash

apt-get update
apt-get install -y --no-install-recommends \
  ca-certificates curl gnupg dirmngr apt-transport-https

# Add Mono GPG key and repository
curl -fsSL https://download.mono-project.com/repo/xamarin.gpg | gpg --dearmor -o /etc/apt/keyrings/mono.gpg
echo "deb [signed-by=/etc/apt/keyrings/mono.gpg] https://download.mono-project.com/repo/debian stable main" \
  > /etc/apt/sources.list.d/mono-official-stable.list

apt-get update
apt-get install -y mono-complete
