#!/bin/sh

mkdir ../OpenSV
cd ../OpenSV
mkdir Players
cd ..
scripts/get_js_players.sh
mkdir /var/www/opensv
mkdir /var/www/opensv/js
pwd
ls -l
cd OpenSV/Players/video.js
npm install
grunt
cp -R OpenSV/Players /var/www/opensv/js/

