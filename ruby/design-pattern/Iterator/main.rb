require_relative 'iterator'

class_room = ClassRoom.new;
class_room.append_student( Student.new('Tanaka') )
class_room.append_student( Student.new('Yamada') )
class_room.append_student( Student.new('Suzuki') )
class_room.append_student( Student.new('Satou') )

iterator = class_room.iterator

while iterator.has_next?
  student = iterator.next
  puts student.name
end
