class Classroom
  attr_accessor :label

  has_many :students, dependent: :destroy

  def initialize(label)
    @label = label
  end
end
