Rails.application.reloader.to_prepare do
  Turbo::Streams::TagBuilder.prepend(Module.new do
    def turbo_stream_action_tag(action, target:, targets: nil, template: nil, **attributes)
      turbo_stream_tag do
        turbo_stream_action_tag_builder(action, target: target, targets: targets, template: template, **attributes)
      end
    end
  end)
end