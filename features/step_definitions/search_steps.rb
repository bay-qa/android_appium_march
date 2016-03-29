When(/^I press on Search textfield$/) do
  puts "click on search textfield"
end

Then(/^I type "([^"]*)" into search field$/) do |seatch_term|
  puts seatch_term
end

Then(/^I see that 1st search result include "([^"]*)"$/) do |name|
  puts name
end

When(/^I press on 1st search result on search result screen$/) do
  puts "pressing 1st search result"
end

And(/^I verify that article contains "([^"]*)"$/) do |name|
  puts "name"
end
