def search_result
  $driver.find_elements(id: "page_list_item_container")
end

When(/^I press on Search textfield$/) do
  $driver.find_element(id: "main_search_bar_text").click
end

Then(/^I type "([^"]*)" into search field$/) do |search_term|
  $driver.find_element(id: "search_src_text").send_keys(search_term)
end

Then(/^I see that (\d+)(?:st|nd|rd|th)? search result include "([^"]*)"$/) do |index, expected_search_name|
  actual_result = search_result[index.to_i - 1].find_element(id: "page_list_item_title").text.downcase
  puts actual_result
  fail("Expecting to see #{expected_search_name}") unless actual_result == expected_search_name
end

When(/^I press on (\d+)(?:st|nd|rd|th)? search result on search result screen$/) do |index|
  search_result[index.to_i - 1].click
end

And(/^I verify that article contains "([^"]*)"$/) do |expected_title|
  article_title = $driver.find_element(id: "page_title_text").text.downcase
  puts article_title
  fail("Expecting to see #{expected_title}") unless article_title.include? expected_title
end

And(/^I should see at least (\d+) search results$/) do |number|
  $driver.find_elements(id: "page_list_item_container").size
end

And(/^I tap on search_suggestion$/) do
  $driver.find_element(id: "search_suggestion").click
end

Then(/^I should see "([^"]*)" in Search textfield$/) do |search_term|
  actual_result = $driver.find_element(id: "search_src_text").text
  fail("Expecting to see #{search_term}") unless actual_result == search_term
end

Then(/^I press on More options button on article screen$/) do
  $driver.find_element(name: "More options").click
end


Then(/^I press on Save page button on article screen$/) do
  $driver.find_element(xpath: "//android.widget.TextView[@text='Save page']").click
end


And(/^I press Saved pages on navigation menu$/) do
  $driver.find_element(xpath: "//android.widget.TextView[@text='Saved pages']").click
end

Then(/^I should see at least (\d+) saved pages$/) do |arg|
  #TODO make this work
end

Then(/^I remove saved page with title "([^"]*)"$/) do |page_name|
  Appium::TouchAction.new.long_press(name: page_name).perform().release
end