#!/bin/sh

echo "pub get v2: /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information_dart/"
cd /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information_dart/
flutter pub get --offline


echo "pub get v2: /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information_flutter/"
cd /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information_flutter/
flutter pub get --offline


echo "pub get v2: /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information/"
cd /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information/
flutter pub get --offline


echo "pub get v2: /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information/example/"
cd /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information/example/
flutter pub get --offline
