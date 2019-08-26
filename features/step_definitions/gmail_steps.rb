require 'capybara'
require 'capybara/dsl'


Given /^I am on the login page$/ do
    Capybara.app_host = 'http://www.gmail.com'
    Capybara.current_session.visit('/')
end
    
And /^User login with username "([^\"]*)" and password "([^\"]*)"$/ do|username, password|
    Capybara.current_session.find(:xpath, '//*[@id="identifierId"]').send_keys(username)
    Capybara.current_session.find(:id, 'identifierNext').click
    Capybara.current_session.find(:xpath, '//input[@type="password"]').send_keys(password)
    Capybara.current_session.find(:id, 'passwordNext').click
    sleep 5
end

And /^compose a new email to some id$/ do
    sleep 5
    Capybara.app_host = 'https://mail.google.com/mail/u/0/#inbox?compose=new'
    Capybara.current_session.visit('/')
    sleep 5
end

When /^User sends an email to "([^\"]*)" with subject "([^\"]*)"$/ do|to_field, subject_field|
    sleep 10
    Capybara.current_session.find(:xpath, '//textarea[@name="to"]').send_keys(to_field)
    Capybara.current_session.find(:xpath, '//input[@name="subjectbox"]').send_keys(subject_field)
    sleep 5
    Capybara.current_session.find(:xpath, '//div[@class="T-I J-J5-Ji aoO v7 T-I-atl L3"]').click
end

Then /^The email appears in the sent folder of gmail with subject "([^\"]*)"$/ do |msg|
    sleep 10
    Capybara.app_host = 'https://mail.google.com/mail/u/0/#sent'
    Capybara.current_session.visit('/')
    sleep 10
end

