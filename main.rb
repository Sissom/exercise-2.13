class Person
  attr_accessor :name, :age
  
  @@people = []
  
  def initialize(name, age)
    @name = name
    @age = age
    @@people << self
  end

  def self.print_all_people
    @@people.each do |person|
      puts "Name: #{person.name}, Age: #{person.age}"
    end
  end
end

Person.new("Matt", 39)
Person.new("Kelly", 35)
Person.print_all_people