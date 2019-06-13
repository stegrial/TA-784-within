require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example 1 - find method' do
    visit 'https://trueautomation.io/'

      click_link(ta('contains:text_link:login', 'Login'))

    sleep 3
  end

  scenario 'Test example 1 - find method' do
    visit 'https://trueautomation.io/'

    within(:xpath, ta('contains:container:find', "//header")) do
      click_link(ta('contains:text_link:login', 'Login'))
    end

    sleep 3
  end

  scenario 'Test example 8 - click_link and two elements on the page (first element)' do
    visit 'https://app.trueautomation.io/auth/signin'

    click_link(ta('contains:text_link:forgot', 'Forgot your password?'))

    sleep 3
  end

  scenario 'Test example 8 - click_link and two elements on the page (first element)' do

    visit 'https://app.trueautomation.io/auth/signin'

    click_link(ta('contains:text_link:back_to_main', 'Back to main'))

    sleep 3
  end

  scenario 'Test example 7 - click_link and two elements on the page (second element)' do
    1.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('contains:container_1', "//div[@data-id='cb9e2c1']")) do
        within(:xpath, ta('contains:container_2', "//div[@data-id='6434f6d']")) do
          click_link(ta('contains:element_inside:click_link', 'Learn more'))
        end
      end

      sleep 3
    end
  end

end