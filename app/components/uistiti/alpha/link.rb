# frozen_string_literal: true

module Uistiti
  module Alpha
    class Link < ViewComponent::Base
      def initialize(path:, method:, color:, text: nil)
        super()
        
        @path = path        
        @method = method   
        @color = color  
        @text = text   
      end

      private

      def classes
        [
          'Link',
          "Link--#{@color}"
        ].join(' ')
      end
    end
  end
end
