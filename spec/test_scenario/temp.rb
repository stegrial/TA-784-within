require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do

  scenario 'Test example 1 - find method' do
    visit 'https://trueautomation.io/'

    # find(:xpath, ta('ta_locator', "//button[@id='does_not_exist_on_the_page']")).click
    click_link(ta('contains:text_link:login', 'Login'))

    sleep 3
  end

end