#!/usr/bin/env bash

echo "\nDownload docker-compose.yml ...\n"
curl https://raw.githubusercontent.com/jorisros/pimcore-docker-compose/master/docker-compose.yml --output docker-compose.yml

echo "Create the .docker/php directory\n"
mkdir -p .docker/php
echo "Download php-ini-overrides.ini\n"
curl https://raw.githubusercontent.com/jorisros/pimcore-docker-compose/master/.docker/php/php-ini-overrides.ini .docker/php/php-ini-overrides.ini
echo "Cleanup.\n"
rm install-docker-compose.sh
