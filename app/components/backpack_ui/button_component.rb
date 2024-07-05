# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  def initialize(name:, icon:)
    @name = name
    @icon = icon
  end

end
