# My minimized Symfony 4 starter kit
![travis](https://travis-ci.org/vikbert/sf4-starter.svg?branch=master)

Quickstart with `Symfony 4` and my favorite development tools, such as `php-cs-fixer`, `phpstan`, `behat`.

## 1. Init Project
```
bash run.sh
```

## 2. Start Project
```
cd MyApp
bin/console server:run
```
then open URL `http://127.0.0.8000` in browser, the symfony start page should be shown.



## 3. Useful commands
phpunit tests
```
bin/phpunit
```

format the code
```
vendor/bin/php-cs-fixer fix
```

detect the code error
```
vendor/bin/phpstan analyse src/
```