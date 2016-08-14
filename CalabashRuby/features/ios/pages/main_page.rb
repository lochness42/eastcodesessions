require_relative '../../../features/support/base_calabash_page'

class IOSMainPage < BaseCalabashPage
  element :name_text_field, "* id:'welcomeTextField'"
  element :name_submit_button, "* id:'welcomeButton'"
  element :welcome_label, "* id:'welcomeLabel'"
end