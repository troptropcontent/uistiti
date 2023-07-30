# frozen_string_literal: true

module Uistiti
  module Alpha
    class FormInputGroup < ViewComponent::Base
      def initialize(form:, type:, field: ,label: , required: false, direction: :column)
        super()
        
        @form = form 
        @type = type
        @field = field
        @label= label
        @required = required       
        @direction = direction        
      end
    end
  end
end
