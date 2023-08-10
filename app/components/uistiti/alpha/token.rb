# frozen_string_literal: true

module Uistiti
  module Alpha
    class Token < ViewComponent::Base
      def initialize(color:, icon: nil, as: :div)
        super()
        
        @color = color.to_s
        @icon = icon
        @as = as.to_sym
      end

      def classes
        ['Token', "Token--color--#{@color}"]
      end
    end
  end
end
