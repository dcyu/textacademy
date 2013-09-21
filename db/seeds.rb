Question.destroy_all
Answer.destroy_all
Curriculum.destroy_all
Lesson.destroy_all
Exercise.destroy_all

c = Curriculum.create(name: "Algebra")
l_1 = Lesson.create(instruction: "Algebra: The Basics", curriculum_id: c.id)
# l_2 = Lesson.create(instruction: "Algebra: The Hard Stuff", curriculum_id: c.id)

e_1 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "5+5", exercise_id: e_1.id)
Answer.create(text: "10", exercise_id: e_1.id)

e_2 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "1+4", exercise_id: e_2.id)
Answer.create(text: "5", exercise_id: e_2.id)

e_3 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "3+1", exercise_id: e_3.id)
Answer.create(text: "4", exercise_id: e_3.id)

e_4 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "3+8", exercise_id: e_4.id)
Answer.create(text: "11", exercise_id: e_4.id)

e_5 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "2+6", exercise_id: e_5.id)
Answer.create(text: "8", exercise_id: e_5.id)