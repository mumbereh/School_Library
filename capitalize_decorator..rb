# frozen_string_literal: true

# CapitalizeDecorator
class CapitalizeDecorator < Decorator
  def correct_name
    super.capitalize
  end
end
