require 'capybara/dsl'
# require 'capybara/cucumber'
# require 'capybara/rails'
include Capybara

module CapInit
    Capybara.run_server=false
    Capybara.default_driver= :selenium
end