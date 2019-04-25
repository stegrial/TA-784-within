require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example' do
    # visit 'https://trueautomation.io/'
    visit 'https://www.facebook.com'


    # within(:xpath, "//header") do
    #   find(:xpath, "(//a[contains(., 'Learn more')])[2]").click #doesn't work! only special capybara methods
      # click_link('Learn More')
    # end

    # within(:id, 'reg_box') do
    #   select('11', :from => 'day')
    # end

    within(:id, 'reg_box') do
      choose('Мужчина')
    end

    # click_link('/*[1]/*[2]/*[1]/*[3]/*[1]/*[1]/*[1]/*[1]/*[4]/*[2]/*[1]/*[1]/*[1]/*[1]/*[4]/*[1]/*[1]/*[1]/*[1]/*[1]/*[1]/*[1]/*[1]/*[1]/*[1]/*[1]')
    # click_link("//a[contains(., 'Login')]")

    sleep 3
  end
end