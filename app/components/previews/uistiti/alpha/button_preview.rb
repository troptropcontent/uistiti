# frozen_string_literal: true

# Setup Playground to use all available component props
# Setup Features to use individual component props and combinations

module Uistiti
  module Alpha
    class ButtonPreview < ViewComponent::Preview
      # @!group Colors
 
       def primary
         render(Uistiti::Alpha::Button.new(color: :primary).with_content('Button'))
       end 
       
       def secondary
         render(Uistiti::Alpha::Button.new(color: :secondary).with_content('Button'))
       end
       
       def danger
         render(Uistiti::Alpha::Button.new(color: :danger).with_content('Button'))
       end

      # @!endgroup
      
      # Simple button style
      
      # @param color select [primary, secondary, danger]
      def playground(color: 'primary')
        render(Uistiti::Alpha::Button.new(color:).with_content('Button'))
      end

    end
  end
end
