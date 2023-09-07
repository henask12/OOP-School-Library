require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(name, age, classroom, parent_permission: true)
    super(name, age, parent_permission: parent_permission)
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
