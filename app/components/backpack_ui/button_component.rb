# frozen_string_literal: true

module BackpackUi
  class ButtonComponent < ViewComponent::Base
    attr_reader :options

    def initialize(text:, icon:, type: 'button', options: {})
      @text = text
      @icon = icon
      @type = type
      @options = options.reverse_merge(defaults)
    end

    def style
      {
        primary: "sm-btn-primary",
        secondary: "sm-btn-secondary",
        tertiary: "sm-btn-tertiary",
        outline: "sm-btn-outline",
        outline_dark: "sm-btn-outline-dark",
        link: "sm-btn-link",
        delete: "sm-btn-delete",
        no_outline: "sm-btn-no-outline",
      }[options[:classification].to_sym] + " " + "sm-btn" + " " + size[options[:size].to_sym]
    end

    def size
      {
        small: "sm-btn-small",
        medium: "sm-btn-medium",
        large: "sm-btn-large",
      }
    end

    private

    def defaults
      {
        classification: 'primary',
        size: 'medium',
      }
    end
  end
end
