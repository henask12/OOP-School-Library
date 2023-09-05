# main.rb

# Require your class files
require_relative 'nameable'
require_relative 'person'
require_relative 'decorator'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

# Create a Person instance
person = Person.new('maximilianus', 22)

# Test the Person's correct_name method
puts "Person's Name: #{person.correct_name}" # Output: maximilianus

# Create a CapitalizeDecorator for the Person
capitalized_person = CapitalizeDecorator.new(person)

# Test the CapitalizeDecorator's correct_name method
puts "Capitalized Person's Name: #{capitalized_person.correct_name}" # Output: Maximilianus

# Create a TrimmerDecorator for the Capitalized Person
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)

# Test the TrimmerDecorator's correct_name method
puts "Capitalized and Trimmed Person's Name: #{capitalized_trimmed_person.correct_name}" # Output: Maximilian
