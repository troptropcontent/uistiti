# frozen_string_literal: true

module Uistiti
  module Alpha
    class Toggle < ViewComponent::Base
      def initialize(checked: , path:, model:, field:, color_on: :success, color_off: :disabled)
        super()
        
        @checked = checked
        @path = path        
        @model = model        
        @field = field        
        @color_off = color_off        
        @color_on = color_on        
      end

      private

      def button_classes
        [
          "Toggle__button",
          "Toggle__button--off--#{@color_off}",
          "Toggle__button--on--#{@color_on}",
        ]
      end

      def input_name
        "toggle-#{@model}-#{@field}"
      end

      def wrapper_data_set
        {
          controller: 'uistiti--alpha--toggle',
          'uistiti--alpha--toggle-url-value':  @path,
          'uistiti--alpha--toggle-model-value': @model,
          'uistiti--alpha--toggle-field-value': @field
        }
      end
    end
  end
end
