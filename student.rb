require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(name = 'Unknown', parent_permission: true, classroom, age = 0)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
