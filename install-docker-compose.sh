#!/usr/bin/env bash

printf "\nDownload docker-compose.yml ...\n"
curl https://raw.githubusercontent.com/jorisros/pimcore-docker-compose/master/docker-compose.yml --output docker-compose.yml

printf "Create the .docker/php directory\n"
mkdir -p .docker/php
printf "Download php-ini-overrides.ini\n"
curl https://raw.githubusercontent.com/jorisros/pimcore-docker-compose/master/.docker/php/php-ini-overrides.ini --output .docker/php/php-ini-overrides.ini

