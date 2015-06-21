require File.expand_path('../boot', __FILE__)

require "sprockets/railtie"

Bundler.require(*Rails.groups)
require "jasmine-jquery-rails"

module Dummy
  class Application < Rails::Application
  end
end

