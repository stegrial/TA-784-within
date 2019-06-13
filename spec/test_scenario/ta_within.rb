require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example 1 - find method inside within, locator type :xpath' do
    # you can correctly use `find` method inside `within` only through the TA driver;
    # the`find` method performs searching element at all html document in any way, so element should be present inside the container for sure;
    # Capybara without TA also performs searching element using `find` method, but Capybara does not say you if element is outside the container;
    # TA will say you if your element is outside the container! You will see the error - Element not found!
    # The main rule for the method `find` - element should be one on the page, because TA always takes the first element!

    2.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:xpath', "//header")) do
        find(:xpath, ta('within:element_inside_1', "//a[contains(., 'Login')]")).click
      end

      sleep 3
      end
  end

  scenario 'Test example 2 - find method inside within, locator type :css' do
    2.times do
      visit 'https://trueautomation.io/'

      within(:css, ta('within:container:css', "div[data-id='cb9e2c1']")) do
        find(:css, ta('within:element_inside_2', "a")).click
      end

      sleep 3
      end
  end

  scenario 'Test example 3 - find method inside within, locator type :id' do
    2.times do
      visit 'https://www.facebook.com'

      within(:id, ta('within:container:id', 'login_form')) do
        find(:id, ta('within:element_inside_3', 'email')).set('username@domain')
      end

      sleep 3
      end
  end

  scenario 'Test example 4 - element is not present in container (initialization)' do
    1.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:outside_init', "//header")) do
        find(:xpath, ta('within:element_inside:negative_1', "//a[contains(., 'Learn more')]")).click
      rescue
        raise 'Checked: the element is outside the container - initialization!'
      end

      sleep 3
    end
  end

  scenario 'Test example 5 - element is not present in container (TA)' do
    1.times do
      visit 'https://trueautomation.io/'
      find(:xpath, ta('within:container:outside_ta', "//header"))
      find(:xpath, ta('within:element_inside:negative_2', "(//a[contains(., 'Learn more')])[1]"))

      within(:xpath, ta('within:container:outside_ta', "//header")) do
        find(:xpath, ta('within:element_inside:negative_2', "(//a[contains(., 'Learn more')])[1]")).click
      rescue
        raise 'Checked: the element is outside the container - TA!'
      end

      sleep 3
    end
  end

  # if (false)
  scenario 'Test example 6 - find method and two elements on the page (second element)' do

    2.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:find_xpath_2', "//div[@data-id='cb9e2c1']")) do
        find(:xpath, ta('within:element_inside:find_xpath_2', "//a[contains(., 'Learn more')]")).click
      end

      sleep 3
    end
  end

  scenario 'Test example 7 - find method and two elements on the page (first element)' do

    2.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:find_xpath_1', "//div[@data-id='41cebdb1']")) do
        find(:xpath, ta('within:element_inside:find_xpath_1', "//a[contains(., 'Learn more')]")).click
      end

      sleep 3
    end
  end

  scenario 'Test example 8 - click_link and two elements on the page (second element)' do
    2.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:click_link_2', "//div[@data-id='cb9e2c1']")) do
        click_link(ta('within:element_inside:click_link_2', 'Learn more'))
      end

      sleep 3
    end
  end

  scenario 'Test example 9 - click_link and two elements on the page (first element)' do
    2.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:click_link_1', "//div[@data-id='41cebdb1']")) do
        click_link(ta('within:element_inside:click_link_1', 'Learn more'))
      end

      sleep 3
    end
  end

  scenario 'Test example 10 - fill_in id' do
    2.times do
      visit 'https://app.trueautomation.io/auth/signin'

      within(:xpath, ta('within:container:fill_in:id', "//form")) do
        fill_in(ta('within:element_inside:fill_in:id', 'login_password'), with: 'password')
      end

      sleep 3
    end
  end

  scenario 'Test example 11 - fill_in name' do
    2.times do
      visit 'https://app.trueautomation.io/auth/signin'

      within(:xpath, ta('within:container:fill_in:name', "//form")) do
        fill_in(ta('within:element_inside:fill_in:name', 'username'), with: 'username@domain')
      end

      sleep 3
    end
  end

  scenario 'Test example 12 - element is not present in container (initialization)' do
    1.times do
      visit 'https://app.trueautomation.io/auth/signin'

      within(:xpath, ta('within:container:fill_in:outside_init', "//div[@class='container login-header']")) do
        fill_in(ta('within:element_inside:fill_in:negative_3', 'username'), with: 'username@domain')
      rescue
        raise 'Checked: the element is outside the container - initialization!'
      end

      sleep 3
    end
  end

  scenario 'Test example 13 - element is not present in container (TA)' do
    1.times do
      visit 'https://app.trueautomation.io/auth/signin'
      find(:xpath, ta('within:container:fill_in:outside_ta', "//div[@class='container login-header']"))
      fill_in(ta('within:element_inside:fill_in:negative_4', 'username'), with: 'recording')

      within(:xpath, ta('within:container:fill_in:outside_ta', "//div[@class='container login-header']")) do
        fill_in(ta('within:element_inside:fill_in:negative_4', 'username'), with: 'searching')
      rescue
        raise 'Checked: the element is outside the container - TA!'
      end

      sleep 3
    end
  end

  scenario 'Test example 14 - click_button text' do
    2.times do
      visit 'https://app.trueautomation.io/auth/signin'

      within(:xpath, ta('within:container:click_button:text', "//form")) do
        click_button(ta('within:element_inside:click_button:text', 'Login'))
      end

      sleep 3
    end
  end

  scenario 'Test example 15 - select id' do
    2.times do
      visit 'https://www.facebook.com'

      within(:id, ta('within:container:select:id', 'reg_box')) do
        select('11', from: ta('within:element_inside:select:id', 'day'))
      end

      sleep 3
    end
  end

  scenario 'Test example 16 - choose text' do
    2.times do
      visit 'https://www.facebook.com'

      within(:id, ta('within:container:choose:text', 'reg_box')) do
        choose(ta('within:element_inside:choose:text', 'Мужчина'))
      end

      sleep 3
    end
  end

  scenario 'Test example 17 - Combination test (container: TA, element inside: click_link)' do
    1.times do
      visit 'https://trueautomation.io/'
      find(:xpath, ta('within:combination:container_TA_1', "//header"))

      within(:xpath, ta('within:combination:container_TA_1', "//header")) do
        click_link(ta('within:combination:inside_click_link', 'Login'))
      end

      sleep 3
    end
  end

  scenario 'Test example 18 - Combination test (container: TA, element inside: xpath)' do
    1.times do
      visit 'https://trueautomation.io/'
      find(:xpath, ta('within:combination:container_TA_2', "//header"))

      within(:xpath, ta('within:combination:container_TA_2', "//header")) do
        find(:xpath, ta('within:combination:inside_xpath', "//a[contains(., 'Login')]")).click
      end

      sleep 3
    end
  end

  scenario 'Test example 19 - Combination test (container: TA, element inside: css)' do
    1.times do
      visit 'https://trueautomation.io/'
      find(:css, ta('within:combination:container_TA_3', "header"))

      within(:css, ta('within:combination:container_TA_3', "header")) do
        find(:css, ta('within:combination:inside_css', "div.jet-button__container > a")).click
      end

      sleep 3
    end
  end

  scenario 'Test example 20 - Combination test (container: TA, element inside: fill_in)' do
    1.times do
      visit 'https://app.trueautomation.io/auth/signin'
      find(:xpath, ta('within:combination:container_TA_4', "//form"))

      within(:xpath, ta('within:combination:container_TA_4', "//form")) do
        fill_in(ta('within:combination:inside_fill_in', 'username'), with: 'username@domain')
      end

      sleep 3
    end
  end

  scenario 'Test example 21 - Combination test (container: TA, element inside: select)' do
    1.times do
      visit 'https://www.facebook.com'
      find(:id, ta('within:combination:container_TA_5', 'reg_box'))

      within(:id, ta('within:combination:container_TA_5', 'reg_box')) do
        select('11', from: ta('within:combination:inside_select', 'day'))
      end

      sleep 3
    end
  end

  scenario 'Test example 22 - Combination test (container: TA, element inside: xpath_brackets)' do

    1.times do
      find(:xpath, ta('within:combination:container_TA_6', "//div[@data-id='cb9e2c1']"))

      within(:xpath, ta('within:combination:container_TA_6', "//div[@data-id='cb9e2c1']")) do
        find(:xpath, ta('within:combination:inside_xpath_brackets', "(//a[contains(., 'Learn more')])[1]")).click
      end

      sleep 3
    end
  end

  scenario 'Test example 23 - Combination test (container: xpath, element inside: TA)' do
    1.times do
      visit 'https://trueautomation.io/'
      find(:xpath, ta('within:combination:inside_TA_1', "//a[contains(., 'Login')]"))

      within(:xpath, ta('within:combination:container_xpath', "//header")) do
        find(:xpath, ta('within:combination:inside_TA_1', "//a[contains(., 'Login')]")).click
      end

      sleep 3
    end
  end

  scenario 'Test example 24 - Combination test (container: css, element inside: TA)' do
    1.times do
      visit 'https://trueautomation.io/'
      find(:css, ta('within:combination:inside_TA_2', "header div.jet-button__container > a"))

      within(:css, ta('within:combination:container_css', "header")) do
        find(:css, ta('within:combination:inside_TA_2', "header div.jet-button__container > a")).click
      end

      sleep 3
    end
  end

  scenario 'Test example 25 - the element inside contains brackets in the initial locator' do

    2.times do
      visit 'https://trueautomation.io/'

      within(:xpath, ta('within:container:xpath_brackets', "//div[@data-id='cb9e2c1']")) do
        find(:xpath, ta('within:element_inside:xpath_brackets', "(//a[contains(., 'Learn more')])[1]")).click
      end

      sleep 3
    end
  end

# end
end