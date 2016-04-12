def search_results
  $driver.find_elements(id: "page_list_item_container")
end

When(/^I press on Search textfield$/) do
  $driver.find_element(id: "main_search_bar_text").click
end

Then(/^I type "([^"]*)" into search field$/) do |search_term|
  $driver.find_element(id: "search_src_text").send_keys(search_term)
end

Then(/^I see that (\d+)(?:st|nd|rd|th)? search result include "([^"]*)"$/) do |index, search_name|
  result = search_results[index.to_i - 1].find_element(id: "page_list_item_title").text
  puts result
  fail("Expecting to see #{search_name}") unless search_name == result
end

When(/^I press on (\d+)(?:st|nd|rd|th)? search result on search result screen$/) do |index|
  search_results[index.to_i - 1].click
end

And(/^I verify that article contains "([^"]*)"$/) do |expected_title|
  article_title = $driver.find_element(id: "page_title_text").text
  puts article_title
  fail("Expecting to see #{expected_title}") unless article_title.include? expected_title
end

And(/^I should see at least (\d+) search results$/) do |number|
  $driver.find_elements(id: "page_list_item_container").size
end

Given(/^I search for "([^"]*)" article$/) do |search_term|
  steps %{
    Given I land on Today's featured article
    When I click on Search textfield
    Then I type "#{search_term}" into search field
    Then I see that 1st search result include "#{search_term}"
    When I tap on 1st search result on search result screen
    And I verify that article contains "#{search_term}"
  }
end