$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rails_js_helper'

require 'dummy_rails_helper'
require 'rspec/rails'

RSpec.configure do |config|
  require 'capybara/rspec'
  require "capybara/poltergeist"

  Capybara.javascript_driver = :poltergeist

  config.before(:suite) do
    if Rails.root.join("tmp", "cache").exist?
      Rails.root.join("tmp", "cache").rmtree
    end
  end
end
