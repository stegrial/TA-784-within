require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example 1 - find method' do
      visit 'https://trueautomation.io/'

        click_link(ta('contains:text_link:login', 'Login'))

      sleep 3
  end

  scenario 'Test example 1 - find method', run1: true do
    visit 'https://trueautomation.io/'

    within(:xpath, ta('contains:container:find', "//header")) do
      click_link(ta('contains:text_link:login', 'Login'))
    end

    # within(:xpath, "//header") do
    #   click_link 'Login'
    # end


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

  scenario 'Test example 7 - click_link and two elements on the page (second element)', run: true do
    1.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:click_link_2', "//div[@data-id='cb9e2c1']")) do
        # within(:xpath, ta('within:container:click_link_24234234', "//div[@data-id='6434f6d']")) do
          click_link(ta('within:element_inside:click_link', 'Learn more'))
        # end
      end

      # within(:xpath, "//div[@data-id='cb9e2c1']") do
      #     click_link('Learn more')
      # end

      sleep 3
    end
  end
end