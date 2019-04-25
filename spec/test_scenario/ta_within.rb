require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example 1 - find method' do
    # you can correctly use `find` method inside `within` only through the TA driver;
    # the`find` method performs searching element at all html document in any way, so element should be present inside the container for sure;
    # Capybara without TA also performs searching element using `find` method, but Capybara does not say you if element is outside the container;
    # TA will say you if your element is outside the container! You will see the error - Element not found!
    # The main rule for the method `find` - element should be one on the page, because TA always takes the first element!

    2.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:find', "//header")) do
        find(:xpath, ta('within:element_inside:1', "//a[contains(., 'Login')]")).click
      end

      sleep 3
      end
  end
if (false)
  scenario 'Test example 2 - within locator type :xpath' do

    2.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:xpath', "//div[@data-id='cb9e2c1']")) do
        find(:xpath, ta('within:element_inside:2', "(//a[contains(., 'Learn more')])[2]")).click
      end

      sleep 3
    end
  end

  scenario 'Test example 3 - within locator type :css' do
    2.times do
      visit 'https://trueautomation.io/'

      within(:css, ta('within:container:css', "div[data-id='41cebdb1']")) do
        find(:css, ta('within:element_inside:3', "div[data-id='41cebdb1'] > div > div > div > div > div > div > a")).click
      end

      sleep 3
      end
  end

  scenario 'Test example 4 - within locator type :id' do
    2.times do
      visit 'https://www.facebook.com'

      within(:id, ta('within:container:id', 'login_form')) do
        find(:id, ta('within:element_inside:4', 'email')).set('username@domain')
      end

      sleep 3
      end
  end

  scenario 'Test example 5 - element is not present in container (initialization)' do
    1.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:outside', "//header")) do
        find(:xpath, ta('within:element_inside:5', "(//a[contains(., 'Learn more')])[1]")).click
      rescue
        raise 'Checked: the element is outside the container - initialization!'
      end

      sleep 3
    end
  end

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

  scenario 'Test example 7 - click_link and two elements on the page (second element)' do
    2.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:click_link:2', "//div[@data-id='cb9e2c1']")) do
        click_link(ta('within:element_inside:click_link', 'Learn more'))
      end

      sleep 3
    end
  end

  scenario 'Test example 8 - click_link and two elements on the page (first element)' do
    2.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:click_link:1', "//div[@data-id='41cebdb1']")) do
        click_link(ta('within:element_inside:click_link', 'Learn more'))
      end

      sleep 3
    end
  end

  scenario 'Test example 9 - fill_in id' do
    2.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:fill_in', "//form")) do
        fill_in(ta('within:element_inside:fill_in:id', 'login_password'), with: 'password')
      end

      sleep 3
    end
  end

  scenario 'Test example 10 - fill_in name' do
    2.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:fill_in', "//form")) do
        fill_in(ta('within:element_inside:fill_in:name', 'username'), with: 'username@domain')
      end

      sleep 3
    end
  end

  scenario 'Test example 11 - element is not present in container (initialization)' do
    1.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:fill_in:outside', "//div[@class='container login-header']")) do
        fill_in(ta('within:element_inside:fill_in:negative', 'username'), with: 'username@domain')
      rescue
        raise 'Checked: the element is outside the container - initialization!'
      end

      sleep 3
    end
  end

  scenario 'Test example 12 - element is not present in container (TA)' do
    1.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:fill_in:outside', "//div[@class='container login-header']")) do
        fill_in(ta('within:element_inside:fill_in:name', 'username'), with: 'username@domain')
      rescue
        raise 'Checked: the element is outside the container - TA!'
      end

      sleep 3
    end
  end

  scenario 'Test example 13 - click_button' do
    2.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:click_button', "//form")) do
        click_button(ta('within:element_inside:click_button', 'Login'))
      end

      sleep 3
    end
  end

  scenario 'Test example 14 - select id' do
    2.times do
      visit 'https://www.facebook.com'

      within(:id, ta('within:container:select', 'reg_box')) do
        select('11', from: ta('within:element_inside:select', 'day'))
      end

      sleep 3
    end
  end

  scenario 'Test example 15 - choose text' do
    2.times do
      visit 'https://www.facebook.com'

      within(:id, ta('within:container:choose', 'reg_box')) do
        choose(ta('within:element_inside:choose', 'Мужчина'))
      end

      sleep 3
    end
  end
end
end