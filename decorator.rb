class Decorator
  def initialize(component)
    @component = component
  end

  def correct_name
    @component.correct_name
  end
end
