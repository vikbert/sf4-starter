#!/usr/bin/env bash
SITE_NAME='MyApp'

rm -r $SITE_NAME
composer create-project symfony/website-skeleton $SITE_NAME

cd $SITE_NAME

# ignore minimum check for behat
composer config minimum-stability dev

composer req --dev behat/behat
composer req --dev phpstan/phpstan
composer req --dev friendsofphp/php-cs-fixer

# php_cs_fixer config
cp -rf ../.php_cs .php_cs