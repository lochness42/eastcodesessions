require 'rubygems'
require 'minitest'
require 'cucumber'
require 'rspec/expectations'

PageObjectMethods.setup_page_object_methods("#{File.dirname(__FILE__)}/..", ENV['TARGET'])
