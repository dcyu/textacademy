User.destroy_all
Question.destroy_all
Answer.destroy_all
Curriculum.destroy_all
Lesson.destroy_all
Exercise.destroy_all
CurrentLevel.destroy_all

u = User.create(phone_number: "16306968303")

c = Curriculum.create(name: "Algebra")
l_1 = Lesson.create(instruction: "Algebra: The Basics", curriculum_id: c.id)
l_2 = Lesson.create(instruction: "Algebra: The Hard Stuff", curriculum_id: c.id)

e_1 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "5+5", exercise_id: e_1.id)
Answer.create(text: "10", exercise_id: e_1.id)

e_2 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "1+4", exercise_id: e_2.id)
Answer.create(text: "5", exercise_id: e_2.id)

e_3 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "3+1", exercise_id: e_3.id)
Answer.create(text: "4", exercise_id: e_3.id)

CurrentLevel.create(user_id: u.id, lesson_id: l_1.id, exercise_id: e_2.id, correct_exercises: [e_1.id])