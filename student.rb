require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(name = 'Unknown', parent_permission: true, classroom = nil, age = 0)
    super(name, age, parent_permission)
    self.classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
