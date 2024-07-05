module BackpackUi
  class Engine < ::Rails::Engine
    isolate_namespace BackpackUi

    config.autoload_paths << root.join("app", "components")

    initializer "backpack_ui.assets.precompile" do |app|
      app.config.assets.precompile += %w( backpack_ui/application.scss )
    end

    initializer "backpack_ui.hotwire_livereload" do |app|
      if Rails.env.development?
        app.config.hotwire_livereload.listen_paths << root.join("app")
      end
    end
  end
end
