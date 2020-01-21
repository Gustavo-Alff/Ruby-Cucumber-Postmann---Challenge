require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
    #config.default_driver = selenium_chrome
    config.default_driver = :selenium
    config.app_host = 'https://www.sicredi.com.br'
end
