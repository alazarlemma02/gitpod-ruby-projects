class Student
  attr_reader :name, :age
  attr_writer :name, :age
  @@count = 0
  
  def initialize(name, age)
    @name = name
    @age = age
    @@count += 1
  end

  def total_count
    puts "The total no of students: #{@@count}"
  end
end