# frozen_string_literal: true

class CapitalizeDecorator < Decorator
  def correct_name
    super.capitalize
  end
end
