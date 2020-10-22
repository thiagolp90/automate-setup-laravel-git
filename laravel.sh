#!/bin/bash

echo "Clone repo"
cd /var/www/
git clone git@repo/your_project.git
cd your_project/
composer install

echo "Laravel Settings"
cp .env.example .env
php artisan key:generate
sudo chown -R www-data:www-data /var/www/your_project
echo "Success"
