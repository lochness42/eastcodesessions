Then(/^greeting with my name is shown$/) do
  wait_true {
    main_page.welcome_label.text.eql?("Hello Pavel!")
  }
end

Given(/^application has started$/) do
  wait_for_displayed main_page.name_text_field
  wait_for_displayed main_page.name_submit_button
  wait_for_displayed main_page.welcome_label
end

When(/^submit my name$/) do
  main_page.name_text_field.send_keys "Pavel"
  main_page.name_submit_button.click
end