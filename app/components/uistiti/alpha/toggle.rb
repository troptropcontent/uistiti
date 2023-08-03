# frozen_string_literal: true

module Uistiti
  module Alpha
    class Toggle < ViewComponent::Base
      attr_reader :field, :model, :options
      def initialize(model, field, options = {})
        super()
        
        @model = model
        @field = field   
        @options = options    
      end

      private

      def checked
        options[:checked] || model.send(field)
      end

      def path
        options[:path] || Rails.application.routes.url_helpers.send("#{model.model_name.singular_route_key}_path", model)
      end
      
      def label_id
        options[:label_id] || ActionView::RecordIdentifier.dom_id(model, 'toggle_label')
      end

      def input_id
        options[:input_id] || ActionView::RecordIdentifier.dom_id(model, 'toggle_input')
      end
      
      def param_key
        options[:param_key] || model.model_name.param_key
      end

      def color_off
        options[:color_off] || :disabled
      end

      def color_on
        options[:color_on] || :success
      end
      
      def button_classes
        [
          "Toggle__button",
          "Toggle__button--off--#{color_off}",
          "Toggle__button--on--#{color_on}",
        ]
      end


      def wrapper_data_set
        {
          controller: 'uistiti--alpha--toggle',
          'uistiti--alpha--toggle-url-value':  path,
          'uistiti--alpha--toggle-param-key-value': param_key,
          'uistiti--alpha--toggle-field-value': field
        }
      end
    end
  end
end
