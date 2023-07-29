require 'lookbook'
require 'view_component'

module Uistiti
  class Engine < ::Rails::Engine
    isolate_namespace Uistiti

    #Show to lookbook where it can find the previews
    Lookbook.config.preview_paths = [File.join(root, 'test/components/previews')]
  end
end
