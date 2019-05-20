require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  # scenario 'Test example 1 - find method' do
    # you can correctly use `find` method inside `within` only through the TA driver;
    # the`find` method performs searching element at all html document in any way, so element should be present inside the container for sure;
    # Capybara without TA also performs searching element using `find` method, but Capybara does not say you if element is outside the container;
    # TA will say you if your element is outside the container! You will see the error - Element not found!
    # The main rule for the method `find` - element should be one on the page, because TA always takes the first element!

    # 1.times do
    #   visit 'https://trueautomation.io/'
    #
    #   within(:xpath, ta('within:container:find', "//header")) do
    #     find(:xpath, ta('within:element_inside:2', "//a[contains(., 'Login')]")).click
    #   end
    #
    #   sleep 3
    # end

    # scenario 'Test example 13 - click_button' do
    #   1.times do
    #     visit 'https://app.trueautomation.io/auth/signin'

        # within(:xpath, ta('within:container:click_button', "//form")) do
        #   click_button(ta('within:element_inside:click_button', 'Login'))
        # end

        # within(:xpath, "//form") do
        #   click_button 'Login'
        # end

        # sleep 3
    #   end
    # end

  # scenario 'Test example 6 - element is not present in container (TA)' do
  #   1.times do
  #     visit 'https://trueautomation.io/'
  #     find(:xpath, ta('within:container:outside_ta', "//header"))
  #     find(:xpath, ta('within:element_inside:negative_2', "(//a[contains(., 'Learn more')])[2]"))
  #
  #     within(:xpath, ta('within:container:outside_ta', "//header")) do
  #       find(:xpath, ta('within:element_inside:negative_2', "(//a[contains(., 'Learn more')])[2]")).click
  #     rescue
  #       raise 'Checked: the element is outside the container - TA!'
  #     end
  #
  #     sleep 3
  #   end

  # scenario 'displayed' do
    # 1.times do


      # visit 'https://www.facebook.com'
      #
      # find(:id, 'email').set('eshapovalov298@gmail.com')
      # find(:id, 'pass').set('Tester1234')
      # find(:id, 'loginbutton').click
      #
      # within(:id, 'download-link-wrapper') do
      # click_link 'download-link'
      # end

      # visit 'http://localhost:8000/html/a_tests/a_hidden.html'
      # within(:id, 'div') do
      # click_link '2 - Link'
      # end



      # visit 'http://the-internet.herokuapp.com/dynamic_controls'
      # find(:xpath, "//button[text()='Remove']").click
      #   sleep 10

        # within(:id, 'checkbox-example') do
        # choose 'A checkbox'
        # end

        # sleep 3
      # end
  # end

  # scenario 'Test example 13 - click_button' do
  #   1.times do
  #     visit 'https://trueautomation.io'
  #
  #     within(:xpath, "//header") do
  #       click_link 'Login'
  #     end
  #
  #   sleep 3
  #   end
  # end

  scenario 'Test example 13 - click_button' do
      visit 'https://trueautomation.io'

      # find(:xpath, ta('9999', "(//a[@class='jet-logo__link'])[1]")).click
      find(:xpath, ta('9999', "//a[contains(.,'Login')]")).click

      sleep 3
  end



end