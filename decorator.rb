class Decorator < Nameable
  def initialize()
    super(nameable)
  end

  def correct_name
    @nameable.correct_name
  end
end
