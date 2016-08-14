module Helpers
  def wait_for_displayed(element, timeout=10)
    wait = Selenium::WebDriver::Wait.new timeout: timeout
    wait.until { element.displayed? }
  end
  module_function :wait_for_displayed
end

World(Helpers)