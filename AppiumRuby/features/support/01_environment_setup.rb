require 'rubygems'
require 'appium_lib'
require 'minitest'
require 'cucumber'
require 'waitutil'
require 'rspec'

class AppiumWorld
end

World do
  AppiumWorld.new
end

#server_url = "http://0.0.0.0:4723/wd/hub"

kill_appium
start_appium

capabilities = Appium.load_appium_txt file: File.expand_path("./../../#{ENV['TARGET']}/appium.txt", __FILE__), verbose: true
Appium::Driver.new(capabilities)
Appium.promote_appium_methods [BaseAppiumPage, AppiumWorld]

screens_folder = "#{File.dirname(__FILE__)}/.."
PageObjectMethods.setup_page_object_methods(screens_folder, ENV['TARGET'])
