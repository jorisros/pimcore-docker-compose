# Pimcore docker compose

This is a implementation of the provided docker image of Pimcore. It fits better for the project setup I normally do.

Create a new project as followed.
```
composer create-project --ignore-platform-reqs pimcore/skeleton pimcore-skeleton 
```

Go into the project directory and run the following command, that download the preconfigured ``docker-compose.yml`` from this repository:

```bash
curl -sL https://git.io/fhkYZ | bash -s
```
Now spin off the docker instances by the following commad
```bash
docker-compose up -d
```

After this when it is a new project run after when docker is up, run the pimcore installer.
```bash
docker-compose exec web vendor/bin/pimcore-install --mysql-host-socket=database
```

When a it is a existing project make sure that the ``system.php`` has the following settings for the database.
```php
"database" => [
    "params" => [
        "username" => "pimcore",
        "password" => "pimcore",
        "dbname" => "pimcore",
        "host" => "database",
        "port" => 3306
    ]
],
```
Then we have to correct the userrights to the apache user. So we will run the following command:
```
docker-compose exec web chown -R www-data ./
```

Access then the install as followed:

[Pimcore normal version](http://localhost:8000)

[Pimcore debug version](http://localhost:8080)

[Adminer](http://localhost:2002)

[Mysql][port 3307]
