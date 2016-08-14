#!/usr/bin/env ruby
require 'json'
target = ARGV.shift

unless system("bundle version")
  puts "Can't find bundler. Check your ruby environment."
  puts "If your using ~/.calabash then run:"
  puts <<EOF

export GEM_HOME=~/.calabash
export GEM_PATH=~/.calabash
export PATH="$PATH:$HOME/.calabash/bin"
EOF
  exit(false)
end

config = JSON.parse(File.read(File.expand_path("./config.json")))

if target == 'android'
  exec("export APP=#{config[target]['app_path']} TARGET=android && calabash-android resign #{config[target]['app_path']} && bundle exec calabash-android run $APP -p android #{ARGV.join(' ')}")
elsif target == 'ios'
  exec("export APP=#{config[target]['app_path']} TARGET=ios DEVICE_TARGET=\"#{config[target]['device']}\" APP_BUNDLE_PATH=#{config[target]['app_path']} && bundle exec cucumber -p ios #{ARGV.join(' ')}")
else
  puts "Invalid target #{target}"
end
