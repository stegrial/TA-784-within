require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do

  scenario 'Test example 2 - find method inside within, locator type :css', css: true do
    1.times do
      visit 'https://trueautomation.io/'

      within(:css, ta('within:container:css', "div[data-id='cb9e2c1']")) do
        find(:css, ta('within:element_inside_2', "a")).click
      end

      # within(:css, "div[data-id='cb9e2c1']") do
      #   find(:css, "a").click
      # end

      sleep 3
    end
  end

  scenario 'Test example 25 - the element inside contains brackets in the initial locator', brackets: true do

    1.times do
      visit 'https://trueautomation.io/'

      # within(:xpath, ta('within:container:xpath_brackets', "//div[@data-id='41cebdb1']")) do
      #   find(:xpath, ta('within:element_inside:xpath_brackets', "(//a[contains(., 'Learn more')])[1]")).click
      # end

      within(:xpath, "//div[@data-id='41cebdb1']") do
        find(:xpath, "(//a[contains(., 'Learn more')])[1]").click
      end

      sleep 3
    end
  end

end