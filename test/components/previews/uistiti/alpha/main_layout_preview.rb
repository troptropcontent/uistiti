# frozen_string_literal: true

# Setup Playground to use all available component props
# Setup Features to use individual component props and combinations

module Uistiti
  module Alpha
    class MainLayoutPreview < ViewComponent::Preview
      
      # Main layout
      # ---------------
      # This layout is here to structure the page, it does not make sens to present it as a component
      #
      # @hidden
      def playground()
        render(Uistiti::Alpha::MainLayout.new())
      end
    end
  end
end
