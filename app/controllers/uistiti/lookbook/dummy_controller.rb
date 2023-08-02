module Uistiti
  module Lookbook
    class DummyController < ApplicationController
      
      #PUT /lookbook/dummy/success
      #GET /lookbook/dummy/success
      def success
        render status: 200, json: {message: 'OK'}.to_json
      end

      #PUT /lookbook/dummy/error
      #GET /lookbook/dummy/error
      def error
        puts params
        render status: 400, json: {:error => 'Bad request'}.to_json
      end
    end
  end
end
