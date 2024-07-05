# frozen_string_literal: true

module BackpackUi
  class ButtonComponent < ViewComponent::Base
    attr_reader :type

    def initialize(name:, icon:, type: 'primary', size: 'medium')
      @name = name
      @icon = icon
      @type = type
      @size = size
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
      }[type.to_sym] + " " + "sm-btn" + " " + size
    end

    def size
      {
        small: "sm-btn-small",
        medium: "sm-btn-medium",
        large: "sm-btn-large",
      }[@size.to_sym]
    end
  end
end
