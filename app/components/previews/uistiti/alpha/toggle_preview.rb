# frozen_string_literal: true
module Uistiti
  module Alpha
    class TogglePreview < ViewComponent::Preview
      # Toggle
      # ---------------
      # If a valid ActiveRecord model is provided with a valid field argument (the model must respond to a method of this field name)
      # With a active record model the following assumtions are made : 
      # - *path* : where the put request is sent is obtained with Rails.application.routes.url_helpers.send("#{model.model_name.singular_route_key}_path", model)
      # - *checked* : the initial state of the toggle, is obtained with model.send(field)
      # - *label_id* : the id of the label that wraps the toggle, is obtained with ActionView::RecordIdentifier.dom_id(model, 'toggle_label')
      # - *input_id* : the id of the input that olds the toggle value is obtained with ActionView::RecordIdentifier.dom_id(model, 'toggle_input')
      # - *param_key* : the param key sent in the body of the oput request is obntained with model.model_name.param_key
      #
      # All those assumptions can be overwritted if passed as options in the last arguments, ie Toggle.new(model, :active, label_id: 'foo') will generate a label with an id of foo
      # 
      # @param checked [Boolean]      
      # @param color_on  select [disabled, success, danger]    
      # @param color_off select [disabled, success, danger]
      # @param request_status select [success, error]     
      def playground(checked: false, color_on: :success, color_off: :disabled, request_status: :success)
        dummy_model = Uistiti::Lookbook::Dummy.new(active: checked, id: 25)
        dummy_path = "/uistiti/lookbook/dummy/#{dummy_model.id}?status=#{request_status}"
        render(Uistiti::Alpha::Toggle.new(dummy_model, :active, path: dummy_path,  color_on: , color_off:))
      end
    end
  end
end
