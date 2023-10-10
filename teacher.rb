class TrimmerDecorator < Decorator
  def correct_name
    super.correct_name[0, 10]
  end
end
