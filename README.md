# A TDD Symfony 4 Starter Project for DDD

[<img src="screenshots/SF4-Starter.svg" align="center" width="500" height="60">]()

## Init the project
Be sure that the essential tools such as `composer`, `yarn` or `npm` 
are installed already.
```
$ git clone https://github.com/vikbert/sf4-starter.git MyApp
$ cd MyApp
$ composer update               # install/update php packages
$ yarn install                  # install/update node packages
$ composer fix                  # execute the code formatter
$ composer test                 # execute the phpunit tests
$ composer behat                # execute the behat test
$ composer stan                 # static code analyse
$ composer dump-autoload        # dump autoloader, if composer.json getting modified
```

## Start the website
```
$ composer server 
```
>  [OK] Server listening on http://127.0.0.1:8000

Open URL `http://127.0.0.1:8000`


## Use Webpack to compile assets
```
# compile
$ yarn encore dev

# watch
$ yarn encore dev --watch

# deploy
$ yarn encore production
```


## Article for further reading
- [webpack for symfony](https://symfony.com/doc/current/frontend/encore/simple-example.html)
