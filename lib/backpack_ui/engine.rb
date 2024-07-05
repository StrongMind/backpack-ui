module BackpackUi
  class Engine < ::Rails::Engine
    isolate_namespace BackpackUi

    config.autoload_paths << root.join("app", "components")

    initializer "backpack_ui.assets.precompile" do |app|
      app.config.assets.precompile += %w( backpack_ui/application.scss )
    end
  end
end
