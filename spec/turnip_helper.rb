require 'turnip/capybara'
require 'capybara/poltergeist'

Capybara.default_driver = :poltergeist

Dir.glob("spec/**/*steps.rb") { |f| load f, true }
