#!/bin/sh

echo "pub get v2: /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information_flutter/"
cd /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information_flutter/
flutter pub upgrade


echo "pub get v2: /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information/"
cd /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information/
flutter pub upgrade


echo "pub get v2: /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information/example/"
cd /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information/example/
flutter pub upgrade
