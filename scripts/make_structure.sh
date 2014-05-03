#!/bin/sh

mkdir ../OpenSV
cd ../OpenSV
mkdir Players
cd ..
./get_js_players.sh
mkdir /var/www/opensv
mkdir /var/www/opensv/js

cp -R Players /var/www/opensv/js/
