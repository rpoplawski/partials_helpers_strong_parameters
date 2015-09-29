
100.times do
  school = School.new({school_name: Faker::University.name})
end
100.times do
  course = Course.new({course_name: Faker::Team.sport})
end
100.times do
  teacher = Teacher.new({name: Faker::Name.name})
end
100.times do
  student = Student.new({name: Faker::Name.name})
end

