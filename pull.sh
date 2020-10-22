#!/bin/bash

cd /var/www/your_project/
echo "Update files"
git pull
echo "Install Node dependencies"
npm i
echo "Install Composer dependencies"
composer install
echo "Create tables"
php artisan migrate
echo "Compile front-end"
npm run prod