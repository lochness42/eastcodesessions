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
  exec("bundle exec calabash-android console #{config[target]['app_path']}")
elsif target == 'ios'
  exec("export APP=#{config[target]['app_path']} DEVICE_TARGET=\"iPhone 6 (9.3)\" APP_BUNDLE_PATH=#{config[target]['app_path']} && bundle exec calabash-ios console")
else
  puts "Invalid target #{target}"
end
