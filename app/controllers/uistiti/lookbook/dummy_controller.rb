module Uistiti
  module Lookbook
    class DummyController < ApplicationController
      
      #PUT /lookbook/dummy/success
      def put_success
        render status: 200, json: {message: 'OK'}.to_json
      end

      #GET /lookbook/dummy/success
      def get_success
        render status: 200, json: {message: 'OK'}.to_json
      end
    end
  end
end
