<<<<<<< HEAD
# frozen_string_literal: true

=======
# TrimmerDecorator
>>>>>>> parent of f323991 (configured linters)
class TrimmerDecorator < Decorator
  def correct_name
    super[0..9]
  end
end
