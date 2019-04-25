require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do

  scenario 'Test example 6 - element is not present in container (TA)' do
    1.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:outside', "//header")) do
        find(:xpath, ta('within:element_inside:2', "(//a[contains(., 'Learn more')])[2]")).click
        rescue
          raise 'Checked: the element is outside the container - TA!'
      end

      sleep 3
    end
  end
end