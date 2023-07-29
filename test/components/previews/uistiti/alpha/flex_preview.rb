# frozen_string_literal: true

# Setup Playground to use all available component props
# Setup Features to use individual component props and combinations

module Uistiti
  module Alpha
    class FlexPreview < ViewComponent::Preview
      # Declare each possible params bellow, please see how to declare params and annotate previews https://lookbook.build/guide/previews/annotations
      
      # @param direction select [row, column]      
      # @param gap select [tiny, small, medium, large, xl, xxl]      
      # @param justify_content  select [center, start, end, flex-start, flex-end, left, right, normal, space-between, space-around, space-evenly, stretch]
      # @param align_items select [normal, stretch, center, start, end, flex-start, flex-end, self-start, self-end]      
      def playground(direction: 'some value', justify_content: 'some value', align_items: 'some value', gap: 'some value')
        render(Uistiti::Alpha::Flex.new(direction:, justify_content:, align_items:, gap:)) do
          [
            content_tag(:p, 'Item 1'),
            content_tag(:p, 'Item 2'),
            content_tag(:p, 'Item 3')
          ].join.html_safe
        end
      end
    end
  end
end
