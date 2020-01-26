class Student
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

class ClassRoom
  def initialize
    @students = []
    @last = 0
  end

  def student_at(index)
    @students[index]
  end

  def append_student(student)
    @students.push(student)
    @last += 1
  end

  def students_length
    @last
  end

  def iterator
    ClassRoomIterator.new(self)
  end
end

class ClassRoomIterator
  def initialize(class_room)
    @class_room = class_room
    @index = 0
  end

  def has_next?
    @index < @class_room.students_length
  end

  def next
    student = @class_room.student_at(@index)
    @index += 1
    student
  end
end
