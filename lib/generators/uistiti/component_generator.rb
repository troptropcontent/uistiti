module Uistiti
  class ComponentGenerator < Rails::Generators::NamedBase
    source_root File.expand_path("templates", __dir__)
    
    argument :arguments, type: :array, default: []
    class_option :status, default: "alpha", desc: "Status of the component. One of alpha, beta or stable"
    def create_controller
      template("component.tt", "app/components/uistiti/#{status_path}#{underscore_name}.rb")
    end

    def create_template
      template("component.html.tt", "app/components/uistiti/#{status_path}#{underscore_name}.html.erb")
    end

    def create_and_import_css
      file_path = "app/assets/stylesheets/uistiti/components/#{status_path}#{underscore_name}.scss"
      template("component.scss.tt", file_path)
      insert_into_file("app/assets/stylesheets/uistiti/uistiti.scss", "@import \"components/#{status_path}#{underscore_name}\";\n")
    end

    def create_stimulus
      template("component.js.tt", "app/assets/javascript/controllers/uistiti/#{status_path}#{underscore_name}_controller.js")
    end

    def create_preview
      template("preview.tt", "app/components/previews/uistiti/#{status_path}#{underscore_name}_preview.rb")
    end
    
    private

    def status
      options[:status]
    end

    def status_path
      return if status == "stable"
  
      "#{status}/"
    end

    def underscore_name
      name.underscore
    end

    def module_name
      return if status == "stable"
  
      status.camelize
    end

    def status_module
      return if status == "stable"
  
      "#{status.camelize}::"
    end

    def stimulus_controller_identifier
      status_identifier = "--#{status}" unless status == "stable"
      name_identifier = underscore_name.gsub("_", "-")
      "uistiti#{status_identifier}--#{name_identifier}"
    end
  end
end
