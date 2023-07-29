# frozen_string_literal: true

# Setup Playground to use all available component props
# Setup Features to use individual component props and combinations

module Uistiti
  module Alpha
    class NavbarPreview < ViewComponent::Preview
      # Declare each possible params bellow, please see how to declare params and annotate previews https://lookbook.build/guide/previews/annotations
      
      # @param color select [primary, secondary]      
      def playground(color: :primary)
        render(Uistiti::Alpha::Navbar.new(color:)) do |navbar|
          navbar.with_logo{'UISTITI'}
          navbar.with_links([
            { path: '#', method: :get, color: 'inverse-base', text: 'Link 1' },
            { path: '#', method: :get, color: 'inverse-base', text: 'Link 2' },
            { path: '#', method: :get, color: 'inverse-base', text: 'Link 3' },
          ])
        end
      end
    end
  end
end
