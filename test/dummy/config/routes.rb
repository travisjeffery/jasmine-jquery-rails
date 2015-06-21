Rails.application.routes.draw do

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  mount JasmineJqueryRails::Engine => "/spec"
end
