class Human
  def initialize(name, age)
    @name = name
    @age = age
  end

  def print_name
    puts @name
  end

  def print_age
    puts @age
  end
end

module Student
  def show_name
    raise 'Called abstract method: show_name'
  end

  def show_age
    raise 'Called abstract method: show_age'
  end
end

class HumanAdapter
  include Student

  def initialize(name, age)
    @human = Human.new(name, age)
  end

  def show_name
    @human.print_name
  end

  def show_age
    @human.print_age
  end
end
