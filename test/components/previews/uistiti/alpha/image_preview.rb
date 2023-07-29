# frozen_string_literal: true

# Setup Playground to use all available component props
# Setup Features to use individual component props and combinations

module Uistiti
  module Alpha
    class ImagePreview < ViewComponent::Preview
      # Declare each possible params bellow, please see how to declare params and annotate previews https://lookbook.build/guide/previews/annotations
      
      # @param source      
      # @param size select [small, medium, large, xl, xxl]     
      def playground(source: 'https://www.lesterresdenatae.fr/wp-content/uploads/2022/05/Masque-20.png', size: 'large')
        render(Uistiti::Alpha::Image.new(source:, size:))
      end
    end
  end
end
