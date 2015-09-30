
50.times do
  School.create({
    school_name: Faker::University.name})
end

50.times do
  teacher = Teacher.create({
    name:  Faker::Name.name,
    school_id: Faker::Number.between(1, 50)})

  course = Course.create({
    course_name: Faker::Commerce.department,
    school_id: Faker::Number.between(1, 50)})
end

100.times do
  Student.create({
    student_name:  Faker::Name.name,
    teacher_id: Faker::Number.between(1, 50)})
end




