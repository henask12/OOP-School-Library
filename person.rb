require_relative 'decorator'
require_relative 'nameable'
require_relative 'trimmer_decorator'
require_relative 'capitalize_decorator'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(name, age = 'Unknown', parent_permission: true)
    @id = generate_id
    @name = name.to_s
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rentals(book, date)
    @rentals = Rental.new(date, book, self)
    # @rentals << rental
    # book.add_rental(rental)
  end

  private

  def of_age?
    @age >= 18
  end

  def generate_id
    rand(10_000..99_999)
  end
end

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalizedPerson = CapitalizeDecorator.new(person)
p capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
p capitalizedTrimmedPerson.correct_name