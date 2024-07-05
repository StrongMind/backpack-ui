module BackpackUi
  class Engine < ::Rails::Engine
    isolate_namespace BackpackUi

    config.autoload_paths << root.join("app", "components")
  end
end
