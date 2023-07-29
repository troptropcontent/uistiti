# frozen_string_literal: true

module Uistiti
  module Alpha
    class Link < ViewComponent::Base
      def initialize(path:, method:)
        super()
        
        @path = path        
        @method = method        
      end
    end
  end
end
