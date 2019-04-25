require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example 1 - find method' do
      visit 'https://trueautomation.io/'

      click_link(ta('within:element_inside:contains', 'Login'))

      sleep 3
  end
end