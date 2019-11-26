!#/bin/bash
git clone https://github.com/vijaytech2/appdemo.git
cd myapp-php/
sh dependencies.sh
curl -sS https://getcomposer.org/installer | php
php composer.phar install
cp *.php /var/www/html/
cp -r vendor/ /var/www/html/
cp na_logo.jpg /var/www/html/
update-rc.d apache2 defaults