Before {
  $driver.start_driver
}

After {
  $driver.driver_quit
}

at_exit do
  kill_appium
end