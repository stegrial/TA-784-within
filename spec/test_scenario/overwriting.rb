require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do

  scenario 'Test example 13 - click_button' do
    visit 'https://trueautomation.io'

    # find(:xpath, ta('9999', "(//a[@class='jet-logo__link'])[1]")).click
    find(:xpath, ta('9999', "//a[contains(.,'Login')]")).click

    sleep 3
  end
end