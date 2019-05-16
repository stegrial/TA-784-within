require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do

  scenario 'Test example 14 - select id' do
    1.times do
      visit 'https://www.facebook.com'

      # within(:id, ta('select:container', 'reg_box')) do
      #   select('11', from: ta('select:inside', 'day'))
      # end
      #
      # sleep 100

      within(:id, 'reg_box') do
        select('31', from: 'day')
      end

      sleep 3
    end
  end
end