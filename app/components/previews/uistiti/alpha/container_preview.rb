# frozen_string_literal: true

# Setup Playground to use all available component props
# Setup Features to use individual component props and combinations

module Uistiti
  module Alpha
    class ContainerPreview < ViewComponent::Preview
      # This composent restrict the content horizontaly, on small screens it applyes a padding-inline of 1rem and on large screens it applkies a padding-iline of 3rem
      
      def playground
        render(Uistiti::Alpha::Container.new.with_content('Content of the container'))
      end
    end
  end
end
