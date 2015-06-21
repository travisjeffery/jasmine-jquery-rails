JasmineJqueryRails::Engine.routes.draw do
  get "javascripts/fixtures/*filename", :to => "spec#fixtures"
  get "fixtures/*filename", :to => "spec#fixtures"
end
