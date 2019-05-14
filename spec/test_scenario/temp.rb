require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do

  scenario 'Test example 14 - select id' do
    1.times do
      visit 'https://www.facebook.com'

      # within(:id, ta('within:container:select', 'reg_box')) do
      #   select('11', from: ta('within:element_inside:select', 'day'))
      # end
      #
      # sleep 100

      # within(:id, 'reg_box') do
        select('31', from: 'day')
      # end

      sleep 3
    end
  end
end