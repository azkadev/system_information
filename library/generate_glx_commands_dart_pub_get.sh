#!/bin/sh

echo "pub get v2: /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information_dart/"
cd /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information_dart/
dart pub get --offline


echo "pub get v2: /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information_flutter/"
cd /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information_flutter/
dart pub get --offline


echo "pub get v2: /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information/"
cd /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information/
dart pub get --offline


echo "pub get v2: /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information/example/"
cd /home/galaxeus/Documents/galaxeus/app/system_information/library/system_information/example/
dart pub get --offline
