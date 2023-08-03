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
        render status: 400, json: {:error => 'Bad request'}.to_json
      end

      #PUT /lookbook/dummy/:id
      def update
        if params[:status] == "error"
          render status: 400, json: {:error => 'Bad request'}.to_json
        else
          render status: 200, json: {message: 'OK'}.to_json
        end
      end
    end
  end
end
