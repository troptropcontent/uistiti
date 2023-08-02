# frozen_string_literal: true
module Uistiti
  module Alpha
    class TogglePreview < ViewComponent::Preview
      # Toggle
      # ---------------
      # On each changes, this component makes PUT request to @path with body sent as follow {@model: {@field: value}} where value is true/false for now.
      # If the request retunr something else than a 2XX the toglle is reverted to its original state
      #
      # @param checked [Boolean]  
      # @param path select [/uistiti/lookbook/dummy/success, /uistiti/lookbook/dummy/error]      
      # @param model      
      # @param field      
      # @param color_on  select [disabled, success, danger]    
      # @param color_off select [disabled, success, danger]
      def playground(checked: false, path: '/uistiti/lookbook/dummy/success', model: 'automated_ticket', field: 'active', color_on: :success, color_off: :disabled)
        render(Uistiti::Alpha::Toggle.new(checked:, path:, model:, field:, color_on:, color_off:))
      end
    end
  end
end
