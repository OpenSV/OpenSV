#!/bin/sh

date=
openshifturl=

cd OpenSV/OpenShift/
git add .
git commit -a -m "more changes from Github - $date"
git push -f $openshifturl

