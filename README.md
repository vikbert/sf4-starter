**A Minimal Symfony 4 Starter Project for TDD & DDD**


## Init the project
Be sure that the essential tools such as `composer`, `yarn` or `npm` 
are installed already.
```
$ git clone https://github.com/vikbert/sf4-starter.git MyApp
$ cd MyApp
$ composer update
$ yarn install
$ composer fix
$ composer test
$ composer behat
$ composer stan
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
