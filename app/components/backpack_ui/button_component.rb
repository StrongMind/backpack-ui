# frozen_string_literal: true

module BackpackUi
  class ButtonComponent < ViewComponent::Base
    def initialize(name:, icon:)
      @name = name
      @icon = icon
    end
  end
end
