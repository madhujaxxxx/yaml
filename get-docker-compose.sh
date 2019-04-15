#!/usr/bin/env bash

echo '====> Installing latest docker compose'

which docker-compose > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo 'Docker compose already installed.'
  exit 1
fi

echo -n '- Fetching latest version: '
version=`curl -s https://api.github.com/repos/docker/compose/releases/latest | grep tag_name | sed -e 's/[^0-9\.]//g'`
echo $version

curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
