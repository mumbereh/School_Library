<<<<<<< HEAD
# frozen_string_literal: true

=======
# Person class
>>>>>>> parent of f323991 (configured linters)
class Person < Nameable
  attr_accessor :name, :age

  def initialize(id, name: 'Unknown', age: 0, parent_permission: true)
    super()
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
