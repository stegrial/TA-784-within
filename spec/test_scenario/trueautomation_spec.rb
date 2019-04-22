require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example' do
    visit 'https://trueautomation.io/'

    within(:xpath, "//div[@data-id='cb9e2c1']") do
      # find(:xpath, "//a[contains(., 'Learn more')]").click #doesn't work! only special capybara methods
      click_link('Learn more')
    end

    sleep 3
  end
end