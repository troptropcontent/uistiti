# frozen_string_literal: true

# Setup Playground to use all available component props
# Setup Features to use individual component props and combinations

module Uistiti
  module Alpha
    class LinkPreview < ViewComponent::Preview
      # Declare each possible params bellow, please see how to declare params and annotate previews https://lookbook.build/guide/previews/annotations
      
      # @param path      
      # @param method      
      def playground(path: 'some value', method: 'some value')
        render(Uistiti::Alpha::Link.new(path:, method:))
      end
    end
  end
end
