#!/bin/bash
xcodebuild -project SessionApp.xcodeproj -scheme SessionApp-cal -sdk iphonesimulator -configuration Debug clean -derivedDataPath ./build  build