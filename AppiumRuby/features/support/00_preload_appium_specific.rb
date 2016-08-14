def kill_appium
  command = Thread.new do
    system(`lsof -t -i tcp:4723 | xargs kill`)
  end
  command.join
end


def start_appium
  File.delete('appium.log') if File.exist?('appium.log')
  fork do
    exec "appium > appium.log"
  end

  WaitUtil.wait_for_condition('Appium server has started up',
                              timeout_sec: 10,
                              delay_sec: 0.5) do
    if File.exist?('appium.log')
      File.readlines("appium.log").grep(/Appium REST http interface listener started/).any?
    else
      false
    end
  end
end