# frozen_string_literal: true

module Uistiti
  module Alpha
    class Navbar < ViewComponent::Base
      renders_one :logo
      renders_many :links, Uistiti::Alpha::Link

      def initialize(color:)
        super()
        puts '#'*80
        puts color
        puts '#'*80
        @color = color        
      end

      private

      def classes
        [
          'Navbar',
          "Navbar--#{@color}"
        ]
      end
    end
  end
end
