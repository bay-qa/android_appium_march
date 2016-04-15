Then(/^I scroll down until "([^"]*)" is displayed$/) do |text|
  $driver.scroll_to_exact text
end

When(/^I swipe screen to the (right|left) direction$/) do |direction|
  if direction == "right"
    $driver.swipe(:start_x => 0.01, :start_y => 0.5, :end_x => 0.9, :end_y => 0.5, :duration => 1500)
  elsif direction == "left"
  #   hw: write down code to perform swipe to the left
  #   hint: use 1 second delay after gesture is completed
  end
end

def navigation_menu_hook
  $driver.find_element(id: "nav_account_text")
end

Then(/^I should( not)? see Navigation menu$/) do |option|
  if option == nil
    fail("Expecting to see Navigation menu") unless $driver.exists{navigation_menu_hook} == true
  elsif option == "not"
  #   hw: write assertion for navigation menu not to be visible
  end
end