Then(/^greeting with my name is shown$/) do
  wait_for(timeout: 5) do
    query(main_page.welcome_label, :text).first.eql?("Hello Pavel!")
  end
end

Given(/^application has started$/) do
  wait_for_elements_exist(
      [main_page.name_text_field,
       main_page.name_submit_button,
       main_page.welcome_label],
      timeout: 5)
end

When(/^submit my name$/) do
  touch main_page.name_text_field
  wait_for_none_animating
  enter_text main_page.name_text_field, "Pavel"
  wait_for_none_animating
  touch main_page.name_submit_button
end