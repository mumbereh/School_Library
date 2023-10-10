# frozen_string_literal: true

class TrimmerDecorator < Decorator
  def correct_name
    super.correct_name[0, 10]
  end
end
