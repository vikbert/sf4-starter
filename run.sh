#!/usr/bin/env bash

create_project () {
    SITE_NAME="$1"
    [ -z "$SITE_NAME" ] && echo "Usage: bash run.sh create <project_name>" && exit 1
    [ -d "$SITE_NAME" ] && echo "Project name <$SITE_NAME> exists already, please choose another one." && exit 
    echo "creating sf4 project with given name : $SITE_NAME ... "

    composer create-project symfony/website-skeleton "$SITE_NAME" && cd "$SITE_NAME"

    # ignore minimum check for behat
    composer config minimum-stability dev

    composer req --dev behat/behat
    composer req --dev phpstan/phpstan
    composer req --dev friendsofphp/php-cs-fixer

    # php_cs_fixer config
    cp -rf ../.php_cs .php_cs
}

case "$1" in
    create)
        create_project "$2"
        ;;
    *)
        echo $"Usage: $0 create project_name        # creat sf4 starter project"
        echo $"Usage: $0 clean                      # remove init project files"
        exit 1
 
esac