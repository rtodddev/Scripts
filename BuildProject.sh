#!/bin/bash

PROJECT_NAME="$1"

cd ~/Developer/$PROJECT_NAME/
xcodebuild clean
xcodebuild -project $PROJECT_NAME.xcodeproj -scheme $PROJECT_NAME -destination platform=macOS
xcodebuild test -project $PROJECT_NAME.xcodeproj -scheme $PROJECT_NAME -destination platform=macOS
