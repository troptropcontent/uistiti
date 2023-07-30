require "uistiti/version"
require "uistiti/engine"

module Uistiti
  def self.stimulus_controllers_directory
    Uistiti::Engine.stimulus_controllers_directory
  end
end
