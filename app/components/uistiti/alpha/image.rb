# frozen_string_literal: true

module Uistiti
  module Alpha
    class Image < ViewComponent::Base
      def initialize(source:, size:)
        super()
        
        @source = source        
        @size = size        
      end

      private

      def classes
        [
          'Image',
          "Image--#{@size}"
        ]
      end
    end
  end
end
