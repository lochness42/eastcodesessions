require_relative '../../../features/support/00_preload_base_appium_page'

class AndroidMainPage < BaseAppiumPage
  element :name_text_field, :name, 'Enter name'
  element :name_submit_button, :name, "say hello"
  element :welcome_label, :id, 'sk.eu.jakab.sessionapp:id/txt_message'
end