require_relative '../../../features/support/base_calabash_page'

class AndroidMainPage < BaseCalabashPage
  element :name_text_field, "* marked:'Enter name'"
  element :name_submit_button, "* marked:'say hello'"
  element :welcome_label, "* id:'txt_message'"
end