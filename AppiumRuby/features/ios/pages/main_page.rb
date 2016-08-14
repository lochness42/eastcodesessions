require_relative '../../../features/support/00_preload_base_appium_page'

class IOSMainPage < BaseAppiumPage
  element :name_text_field, :id, 'welcomeTextField'
  element :name_submit_button, :id, "welcomeButton"
  element :welcome_label, :id, 'welcomeLabel'
end