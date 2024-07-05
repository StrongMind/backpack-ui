# frozen_string_literal: true

module BackpackUi
  class ButtonComponent < ViewComponent::Base
    attr_reader :type

    def initialize(name:, icon:, type:)
      @name = name
      @icon = icon
      @type = type
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
      }[type.to_sym] + " sm-btn"
    end
  end
end
