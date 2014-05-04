#!/bin/sh

cd ..
mkdir OpenSV
mkdir OpenSV/Players

scripts/get_js_players.sh

cd OpenSV
git clone https://github.com/OpenSV/OpenShift.git
cd ..

pwd
ls -l

cd OpenSV/Players/video.js
npm install
grunt
cd ../../..

pwd
ls -l

mkdir OpenSV/OpenShift/app/js/Players

#get jPlayer
mkdir OpenSV/OpenShift/app/js/Players/jPlayer
cp -R OpenSV/Players/jPlayer/jquery.jplayer/* OpenSV/OpenShift/app/js/Players/jPlayer/
cp -R OpenSV/Players/jPlayer/popcorn/player/* OpenSV/OpenShift/app/js/Players/jPlayer/
cp -R OpenSV/Players/jPlayer/skin OpenSV/OpenShift/app/js/Players/jPlayer/

#get video.js
mkdir OpenSV/OpenShift/app/js/Players/video.js
cp -R OpenSV/Players/video.js/build/files/* OpenSV/OpenShift/app/js/Players/video.js/

#get popcorn-js
mkdir OpenSV/OpenShift/app/js/Players/popcorn
cp -R OpenSV/Players/popcorn-js/popcorn.js OpenSV/OpenShift/app/js/Players/popcorn/
cp -R OpenSV/Players/popcorn-js/plugins OpenSV/OpenShift/app/js/Players/popcorn/

cp html/samples/videojs.html OpenSV/OpenShift/app/partials/
cp html/samples/jPlayer.html OpenSV/OpenShift/app/partials/

scripts/pushToOpenShift.sh

