
module Uistiti
  module Lookbook 
    class Dummy
      include ActiveModel::Model
      
      attr_accessor :name, :active, :id
      def initialize(id: , name: nil, active: false)
        @id = id 
        @name = name
        @active = active
      end
    end
  end
end
