# Pimcore docker compose

This is a modification of the docker-compose of @dpfaffenbauer. It fits better for the project setup we normally do.

Checkout project or [install](https://pimcore.com/docs/5.x/Development_Documentation/Getting_Started/Installation.html) a new project.

When you want to do a ``composer install`` the local environment dont have the right dependencies. So you have to do a composer install as followed:

```
composer install --ignore-platform-reqs --no-scripts
```

Go into the project directory and run the following command:
```bash
curl -sL https://git.io/fhkYZ | bash -s
```
Now spin off the docker instance by the following commad
```bash
docker-compose up -d
```
After this when it is a new project run after when docker is up, run the pimcore installer.
```bash
docker-compose exec php vendor/bin/pimcore-install --mysql-socket-host=db
```
When a it is a existing project make sure that the ``system.php`` has the following settings for the database.
```php
"database" => [
    "params" => [
        "username" => "pimcore",
        "password" => "pimcore",
        "dbname" => "pimcore",
        "host" => "db",
        "port" => 3306
    ]
],
```
Access then the install as followed:

[Pimcore normal version](http://localhost:2000)

[Pimcore debug version](http://localhost:2006)

[Adminer](http://localhost:2002)

[Mysql][port 3307]
