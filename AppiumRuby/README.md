#Appium setup
## This is the setup guide for Appium

Appium is a UI automation framework and the following is a guide to setting it up

## Installation steps
Do all of the following steps in the main Appium folder with your Gemfile.

Make sure node is installed, if not run the `brew install node` command.

Then check the same with rvm, not run these commands:
```
curl -sSL https://get.rvm.io | bash -s stable
rvm install ruby
source ~/.bashrc
```
And make sure the right version of ruby is being used:
```
rvm install 2.2.1
rvm use 2.2.1
/bin/bash --login (this is optional if using on for instance, the Vagrant VM setup)
```
Update RubyGems and bundler if needs be:
```
gem install --no-rdoc --no-ri bundler
gem Update
```
Run `bundle install` to install your desired gems

Lastly, to test if Appium has been installed, run 'appium' in terminal, if nothing appears run `npm install -g appium` as a final command.

## Setup
Depending on platform that you'll run tests on. Download corresponding simulator(s) for iOS automation or Android emulator (emulator has to be started before test is going to be ran). Don't forget to setup right paths for Android tools (*ANDROID_HOME* variable). Settings can be checked with **Appium Doctor** tool.
Set right settings in */features/ios/appium.txt* and */features/android/appium.txt* to have right device coverage.

## Running Appium
`bundle exec cucumber TARGET=IOS` or `bundle exec cucumber TARGET=ANDROID`
