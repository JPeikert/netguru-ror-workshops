puts "Seeds: start"
TEACHER_TITLES = %w(Dr. Prof. TA)
User.create!(email: 'admin@admin.com',password: 'adminadmin')

Teacher.create!(first_name: "Retha", last_name: "Gerhold", academic_title: TEACHER_TITLES.sample)
Teacher.create!(first_name: "John", last_name: "Roman", academic_title: TEACHER_TITLES.sample)
Teacher.create!(first_name: "Lynn", last_name: "Zimmermann", academic_title: TEACHER_TITLES.sample)

teachers = Teacher.all
SubjectItem.create!(title: "Mathematics", teacher: teachers.sample)
SubjectItem.create!(title: "Biology", teacher: teachers.sample)
SubjectItem.create!(title: "History", teacher: teachers.sample)
SubjectItem.create!(title: "Geology", teacher: teachers.sample)
SubjectItem.create!(title: "Quantum mechanics", teacher: teachers.sample)

Student.create!(first_name: "John", last_name: "Cena", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Johnny", last_name: "Bravo", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Margaret", last_name: "Smith", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Jaylan", last_name: "Homenick", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Mabel", last_name: "Glover", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Makenna", last_name: "Collins", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Ned", last_name: "Labadie", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Rosalyn", last_name: "Flatley", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Efren", last_name: "Krajcik", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Merritt", last_name: "Trantow", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Lorenzo", last_name: "Hermann", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Junius", last_name: "Sporer", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Marcos", last_name: "Stiedemann", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Caleb", last_name: "Hills", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Pat", last_name: "Schumm", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Elyse", last_name: "Bednar", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Lavern", last_name: "Hyatt", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Jayne", last_name: "Lebsack", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Samanta", last_name: "Kilback", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Dejuan", last_name: "Kihn", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Laurine", last_name: "Gleichner", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Angela", last_name: "Haley", birthdate: rand(20.years..30.years).seconds.ago) 
Student.create!(first_name: "Clark", last_name: "Halvorson", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Peter", last_name: "Dare", birthdate: rand(20.years..30.years).seconds.ago)
Student.create!(first_name: "Angus", last_name: "MacGyver", birthdate: rand(20.years..30.years).seconds.ago)

students = Student.all
SubjectItem.all.each do |subject_item|
  subject_item.students << students.sample(rand(4..10))
end

SubjectItem.all.each do |subject_item|
  subject_item.students.each do |student|
    rand(1..5).times do
      subject_item.subject_item_notes << SubjectItemNote.create(student: student,
                                                                subject_item: subject_item,
                                                                value: rand(1..6))
    end
  end
end

puts "Seeds: done"
