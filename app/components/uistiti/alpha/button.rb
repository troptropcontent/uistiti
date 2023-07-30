# frozen_string_literal: true

module Uistiti
  module Alpha
    class Button < ViewComponent::Base
      def initialize(color:)
        super()
        
        @color = color
      end

      private

      def classes
        [
          "Button",
          "Button--#{@color}"
        ]
      end
    end
  end
end
