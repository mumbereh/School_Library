# frozen_string_literal: true

class Decorator < Nameable
  def initialize(nameable)
    super(nameable)
  end

  def correct_name
    @nameable.correct_name
  end
end
