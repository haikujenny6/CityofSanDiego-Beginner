numberClicks = browser_get_fake_cookie_value("mapClicks")
numberClicks = numberClicks + 1
browser_set_fake_cookie_value("mapClicks",numberClicks)
if numberClicks >=3 then
  browser_dispatch_successful_command("fail","","yes")
  break
end if