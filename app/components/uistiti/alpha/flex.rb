# frozen_string_literal: true

module Uistiti
  module Alpha
    class Flex < ViewComponent::Base
      renders_many :items
      attr_reader :direction, :gap, :justify_content, :align_items, :html_options
      def initialize(direction: , gap: nil, justify_content: nil, align_items: nil, html_options: {})
        super()
        
        @direction = direction        
        @justify_content = justify_content        
        @align_items = align_items        
        @gap = gap
        @html_options = html_options        
      end

      private

      def classes 
        [
          "Flex",
          "Flex--direction--#{direction}",
          ("Flex--gap--#{gap}" if gap),
          ("Flex--justify-content--#{justify_content}" if justify_content),
          ("Flex--align-items--#{align_items}" if align_items),
          html_options[:class]
        ]
      end
    end
  end
end