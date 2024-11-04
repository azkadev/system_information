#!/bin/sh
flutter clean
flutter pub get --offline
flutter build apk --release