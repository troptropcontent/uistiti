require 'lookbook'
require 'view_component'

module Uistiti
  class Engine < ::Rails::Engine
    isolate_namespace Uistiti

    #Show to lookbook where it can find the previews
    Lookbook.config.preview_paths = [File.join(Uistiti::Engine.root, 'app/components/previews')]
    Lookbook.config.preview_layout = "uistiti/component_preview"

    def self.stimulus_controllers_directory
      File.join(root, 'app/assets/javascript/controllers/uistiti')
    end 
  end
end
