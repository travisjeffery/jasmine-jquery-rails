module JasmineJqueryRails
  class SpecController < JasmineJqueryRails::ApplicationController
    layout false

    def fixtures
      render "#{JasmineJqueryRails.fixture_path}/#{params[:filename]}"
    end
  end
end
