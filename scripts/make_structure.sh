#!/bin/sh

mkdir ../OpenSV
mkdir ../OpenSV/Players
mkdir ../OpenSV/OpenShift

scripts/get_js_players.sh

cd OpenSV/OpenShift
git clone https://github.com/OpenSV/OpenShift.git
cd ../..

pwd
ls -l

cd OpenSV/Players/video.js
npm install
grunt
cd ../../..

pwd
ls -l

mkdir /var/www/opensv
mkdir /var/www/opensv/js

cp -R OpenSV/Players /var/www/opensv/js/
cp html/samples/videojs.html /var/www/opensv

cp -R OpenSV/Players OpenSV/OpenShift/OpenShift/app/js/

