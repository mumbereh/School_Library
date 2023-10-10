# TrimmerDecorator
class TrimmerDecorator < Decorator
  def correct_name
    super[0..9] # Truncate the name to a maximum of 10 characters
  end
end
