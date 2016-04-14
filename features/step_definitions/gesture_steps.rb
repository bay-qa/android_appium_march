When(/^I swipe screen to the (right|left) direction$/) do |direction|
  if direction == "right"
    swipe(:start_x => 0.01, :start_y => 0.5, :end_x => 0.9, :end_y => 0.5, :duration => 1500)
  elsif direction == "left"
    swipe(:start_x => 0.9, :start_y => 0.5, :end_x => 0.01, :end_y => 0.5, :duration => 1500)
    sleep 1
  end
end

def account_text
  find_element(id: "nav_account_text")
end

Then(/^I should( not)? see Navigation menu$/) do |option|
  if option == nil
    fail("Expecting to see Navigation menu") unless exists{account_text} == true
  elsif option == " not"
    fail("Not expecting to see Navigation menu") unless exists{account_text} == false
  end
end




Then(/^I scroll down until I "([^"]*)" is displayed$/) do |text|
  scroll_to_exact text
end