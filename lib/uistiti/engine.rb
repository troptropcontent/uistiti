require 'lookbook'
require 'view_component'

module Uistiti
  class Engine < ::Rails::Engine
    isolate_namespace Uistiti

    #Show to lookbook where it can find the previews
    puts '*'*80
    puts File.join(Uistiti::Engine.root, 'test/components/previews')
    puts '*'*80
    Lookbook.config.preview_paths = [File.join(Uistiti::Engine.root, 'test/components/previews')]
    Lookbook.config.preview_layout = "uistiti/component_preview"
  end
end
