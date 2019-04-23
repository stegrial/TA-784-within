require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example' do
    visit 'https://trueautomation.io/'

    # sleep 5

    within(:xpath, ta('within:container', "//div[@data-id='cb9e2c1']")) do
    #   find(:xpath, ta('within:element_inside', "(//a[contains(., 'Learn more')])[2]")).click
      click_link(ta('within:element_inside'))
    end

    sleep 3
  end
end