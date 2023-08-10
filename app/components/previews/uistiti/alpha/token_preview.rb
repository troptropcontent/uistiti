# frozen_string_literal: true

# Setup Playground to use all available component props
# Setup Features to use individual component props and combinations

module Uistiti
  module Alpha
    class TokenPreview < ViewComponent::Preview
      # Declare each possible params bellow, please see how to declare params and annotate previews https://lookbook.build/guide/previews/annotations
      
      # @param color select [success, warning, error]
      def playground(color: 'success')
        render(Uistiti::Alpha::Token.new(color:).with_content('Token'))
      end
      # @!group Icons 
      def pause
        render(Uistiti::Alpha::Token.new(color: 'warning', icon: 'pause').with_content('Token'))
      end 
      
      def done
        render(Uistiti::Alpha::Token.new(color: 'success', icon: 'done').with_content('Token'))
      end
      
      def cancel
        render(Uistiti::Alpha::Token.new(color: 'error', icon: 'cancel').with_content('Token'))
      end

     # @!endgroup
    end
  end
end
