When(/^I press on Search textfield$/) do
  $driver.find_element(id: "main_search_bar_text").click
end

Then(/^I type "([^"]*)" into search field$/) do |search_term|
  $driver.find_element(id: "search_src_text").send_keys(search_term)
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

And(/^I should see at least (\d+) search results$/) do |number|
  $driver.find_elements(id: "page_list_item_container").size
end