# frozen_string_literal: true

# Setup Playground to use all available component props
# Setup Features to use individual component props and combinations

module Uistiti
  module Alpha
    class ButtonPreview < ViewComponent::Preview
      # Simple button style
      
      # @param color select [primary, secondary, danger]
      def playground(color: 'primary')
        render(Uistiti::Alpha::Button.new(color:).with_content('Button'))
      end
    end
  end
end
