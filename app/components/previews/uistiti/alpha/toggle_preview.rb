# frozen_string_literal: true

# Setup Playground to use all available component props
# Setup Features to use individual component props and combinations

module Uistiti
  module Alpha
    class TogglePreview < ViewComponent::Preview
      # Declare each possible params bellow, please see how to declare params and annotate previews https://lookbook.build/guide/previews/annotations
      
      # @param checked [Boolean]  
      # @param path      
      # @param model      
      # @param field      
      # @param color_on  select [disabled, success, danger]    
      # @param color_off select [disabled, success, danger]
      def playground(checked: false, path: 'some value', model: 'some value', field: 'some value', color_on: :success, color_off: :disabled)
        render(Uistiti::Alpha::Toggle.new(checked:, path:, model:, field:, color_on:, color_off:))
      end
    end
  end
end
