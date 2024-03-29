# frozen_string_literal: true

# Setup Playground to use all available component props
# Setup Features to use individual component props and combinations

module Uistiti
  module Alpha
    class LinkPreview < ViewComponent::Preview
      # Declare each possible params bellow, please see how to declare params and annotate previews https://lookbook.build/guide/previews/annotations
      
      # @param path      
      # @param method select [get, delete]      
      # @param color select [base, inverse-base, primary, secondary]      
      def playground(path: 'some value', method: :get, color: :base)
        render(Uistiti::Alpha::Link.new(path:, method:, color:).with_content('Link'))
      end
    end
  end
end
