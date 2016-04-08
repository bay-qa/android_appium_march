Given(/^I land on Today's featured article screen$/) do
  #content_desc = name
  #resource-id = id
  $driver.find_element(name: "Today's featured article")
end

Then(/^I press navigation menu icon$/) do
  $driver.find_element(name: "Wikipedia Alpha").click
end

Then(/^I press on Log in to Wikipedia$/) do
  $driver.find_element(id: "nav_account_text").click
  sleep 5
end

And(/^I land on Login screen$/) do
  # $driver.find_element(xpath: "//android.view.View[contains(@resource-id,'action_bar')]/android.widget.TextView").text

  text_from_app = $driver.find_element(id: "action_bar").find_element(class: "android.widget.TextView").text
  if text_from_app != "Login to Wikipedia"
    fail("Expecting to be on Login screen")
  end
end

Then(/^I type my username "(.*?)"$/) do |user_name|
  $driver.find_element(id: "login_username_text").send_keys(user_name)
end

Then(/^I type my password "(.*?)"$/) do |password|
  $driver.find_element(id: "password_edit_text_input").send_keys(password)
end

Then(/^I press Log in button on Login screen$/) do
  $driver.find_element(id: "login_button").click
end

Then(/^I should see "([^"]*)" in log in section$/) do |name|
  name_from_app = $driver.find_element(id: "nav_account_text").text

  if name_from_app != name
    fail("Expecting to see name #{name}")
  end
end

Then(/^I press Log out button$/) do
  $driver.find_element(id: "navdrawer").find_element(class: "android.widget.ListView").find_elements(class: "android.widget.TextView")[1].click
end

Then(/^Log in button should be (disabled|enabled)$/) do |state|
  actual_button_state = $driver.find_element(id: "login_button").enabled?
  if state == "enabled"
    fail("Expecting Log in to be enabled") if actual_button_state == false
  else
    fail("Expecting Log in to be disabled") if actual_button_state == true
  end
end






