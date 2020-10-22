#!/bin/bash

echo "GIT Settings"
git config --global user.name "Your name"
git config --global user.email "your-mail@your-site.com"

echo "Create a key SSH"
ssh-keygen -o -t rsa -b 4096 -C "your-mail@your-site.com" -f $HOME/.ssh/your_project
cat ~/.ssh/your_project.pub
echo "Success!"