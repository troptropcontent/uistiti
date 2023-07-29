# frozen_string_literal: true

module Uistiti
  module Alpha
    class Flex < ViewComponent::Base
      renders_many :items
      attr_reader :direction, :gap, :justify_content, :align_items
      def initialize(direction: , gap: nil, justify_content: nil, align_items: nil)
        super()
        
        @direction = direction        
        @justify_content = justify_content        
        @align_items = align_items        
        @gap = gap        
      end

      private

      def classes 
        [
          "Flex",
          "Flex--direction--#{direction}",
          ("Flex--gap--#{gap}" if gap),
          ("Flex--justify-content--#{justify_content}" if justify_content),
          ("Flex--align-items--#{align_items}" if align_items)
        ]
      end
    end
  end
end