#!/bin/bash
# Decrypt the private key
openssl aes-256-cbc -K $encrypted_8ae64f4187a1_key -iv $encrypted_8ae64f4187a1_iv -in .travis/private_key.enc -out ~/.ssh/id_rsa -d

# Set the permission of the key
chmod 600 ~/.ssh/id_rsa
# Start SSH agent
eval $(ssh-agent)
# Add the private key to the system
ssh-add ~/.ssh/id_rsa
# Copy SSH config
cp .travis/ssh_config ~/.ssh/config
# Set Git config
git config --global user.name "liutf"
git config --global user.email lautayfir@163.com

# Deploy to GitHub
hexo deploy