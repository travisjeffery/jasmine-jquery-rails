require "jasmine_jquery_rails/engine"
require "jasmine_jquery_rails/version"

module JasmineJqueryRails

  #Specify the path for fixutures, defaults to 'spec/javascripts/fixtures'
  mattr_accessor :fixture_path
  @@fixture_path = 'spec/javascripts/fixtures'

end
