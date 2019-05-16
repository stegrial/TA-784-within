require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example 1 - find method' do
    # you can correctly use `find` method inside `within` only through the TA driver;
    # the`find` method performs searching element at all html document in any way, so element should be present inside the container for sure;
    # Capybara without TA also performs searching element using `find` method, but Capybara does not say you if element is outside the container;
    # TA will say you if your element is outside the container! You will see the error - Element not found!
    # The main rule for the method `find` - element should be one on the page, because TA always takes the first element!

    1.times do
      visit 'https://trueautomation.io/'

      # within(:xpath, ta('within:container:find', "//header")) do
        find(:xpath, ta('within:element_inside:2', "//a[contains(., 'Login')]")).click
      # end

      sleep 3
    end
  end
end