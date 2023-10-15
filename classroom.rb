class Classroom
  attr_accessor :label

  has_many :students

  def initialize(label)
    @label = label
  end

  def add_student(student)
    @students << student
    student.classroom = self
  end
end
