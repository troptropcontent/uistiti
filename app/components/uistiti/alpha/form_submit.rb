# frozen_string_literal: true

module Uistiti
  module Alpha
    class FormSubmit < ViewComponent::Base
      def initialize(form: ,text: ,color:)
        super()
        
        @form = form  
        @text = text      
        @color = color        
      end

      def classes
        [ 
          "FormSubmit",
          "Button", 
          "Button--#{@color}"
        ]
      end
    end
  end
end
