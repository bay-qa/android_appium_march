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
  puts "I am on Login screen"
end

Then(/^I type my username "(.*?)"$/) do |user_name|
  puts user_name
end

Then(/^I type my password "(.*?)"$/) do |password|
  puts password
end

Then(/^I press Log in button$/) do
  puts "button is pressed"
end

Then(/^I should see "([^"]*)" in log in section$/) do |name|
  puts name
end

Then(/^I press Log out button$/) do
  puts "pressing Log out button"
end

Then(/^Log in button should be disabled$/) do
  puts "I verify that Login button is disabled"
end



