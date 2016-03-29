Given(/^I land on Today's featured article screen$/) do
  puts "I am on article screen"
end


Then(/^I press navigation menu icon$/) do
  puts "pressing button"
end

Then(/^I press on Log in to Wikipedia$/) do
  puts "pressing Log in button"
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