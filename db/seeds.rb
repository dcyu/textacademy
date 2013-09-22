#encoding: utf-8
Question.destroy_all
Answer.destroy_all
Curriculum.destroy_all
Lesson.destroy_all
Exercise.destroy_all

c = Curriculum.create(name: "Algebra")
l_1 = Lesson.create(curriculum_id: c.id, name: 'What is Algebra?', instruction: "Algebra is the type of math in which letters or symbols are used to represent numbers in equations. The letter represents an unknown number, which can be found by solving an equation. The letter which represents the unknown number is called a variable. For example, given the equation x + 5 = 6, x is the variable, because we don’t know what it represents. To solve the equation, we want our unknown variable to be on one side of the equation, and everything else to be on the other side. Lets start by subtracting 5 from both sides, resulting in x + 5 -5 = 6 -5. This simplifies to x = 6 - 5, so x = 1. To check your answer, plug the value of the variable back into the equation. In this case, we found that x = 1. 1 + 5 = 6, so we found the correct answer. Lets do another example with the equation a -3 = 7. In this example, a is our variable, because we don’t know what it represents yet. Lets solve the equation. We want a to be on one side of the equation, and everything else to be on the other side. So, lets add 3 to both sides. a -3 + 3 = 7 + 3. This simplifies to a = 7 + 3, so a = 10. Lets check our answer by plugging our value of a back into the equation. 10 - 3 = 7. We got the correct answer!")

e_1 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "x + 4 = 6\n Find the value of the variable to solve the equation", exercise_id: e_1.id)
Answer.create(text: "2", exercise_id: e_1.id)

e_2 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "10 - y = 5\n Find the value of the variable to solve the equation", exercise_id: e_2.id)
Answer.create(text: "5", exercise_id: e_2.id)

e_3 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "14 = a + 6\n Find the value of the variable to solve the equation", exercise_id: e_3.id)
Answer.create(text: "8", exercise_id: e_3.id)

e_4 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "z - 3 = -3\n Find the value of the variable to solve the equation", exercise_id: e_4.id)
Answer.create(text: "0", exercise_id: e_4.id)

e_5 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "5 - j = -1\n Find the value of the variable to solve the equation", exercise_id: e_5.id)
Answer.create(text: "6", exercise_id: e_5.id)

e_6 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "9 - x = -6\n Find the value of the variable to solve the equation", exercise_id: e_6.id)
Answer.create(text: "15", exercise_id: e_6.id)

e_7 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "15 + y = 22\n Find the value of the variable to solve the equation", exercise_id: e_7.id)
Answer.create(text: "7", exercise_id: e_7.id)

e_8 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "24 - x = 0\n Find the value of the variable to solve the equation", exercise_id: e_8.id)
Answer.create(text: "24", exercise_id: e_8.id)

e_9 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "x + 0 = 6\n Find the value of the variable to solve the equation", exercise_id: e_9.id)
Answer.create(text: "6", exercise_id: e_9.id)

e_10 = Exercise.create(lesson_id: l_1.id)
Question.create(text: "15 - x = 10\n Find the value of the variable to solve the equation", exercise_id: e_10.id)
Answer.create(text: "5", exercise_id: e_10.id)

l_2 = Lesson.create(curriculum_id: c.id, name: 'Algebra and Multiplication',
										instruction: "Using algebra can help you solve all sorts of equations. Normally in math, multiplication is represented using an ‘x’ in between two numbers. However, in algebra, that x is removed. Instead, the number and the variable it is being multiplied by are just written next to each other. For example, 4 x m (4 times m) is written as 4m. Or 5 x y (5 times y) is written as 5y. So for example, the equation 5u = 35, can be read as 5 times u equals 35. To solve for u, we must perform the same operations on both sides of the equation. Remember, we are trying to get our variable on one side of the equation, and everything else on the other. To do this, we must divide both sides of the equation by whatever number is in front of our variable, in this case, 5. Lets start. 5u/5 = 35/5. So, u = 35/5, which simplifies to u = 7. Lets check to make sure we got the right answer. 5 times 7 = 35...correct!")

e_1 = Exercise.create(lesson_id: l_2.id)
Question.create(text: "6m = 18\n Find the value of the variable to solve the equation", exercise_id: e_1.id)
Answer.create(text: "3", exercise_id: e_1.id)

e_2 = Exercise.create(lesson_id: l_2.id)
Question.create(text: "40 = 10x\n Find the value of the variable to solve the equation", exercise_id: e_2.id)
Answer.create(text: "4", exercise_id: e_2.id)

e_3 = Exercise.create(lesson_id: l_2.id)
Question.create(text: "24 = 2k\n Find the value of the variable to solve the equation", exercise_id: e_3.id)
Answer.create(text: "12", exercise_id: e_3.id)

e_4 = Exercise.create(lesson_id: l_2.id)
Question.create(text: "18y = 18\n Find the value of the variable to solve the equation", exercise_id: e_4.id)
Answer.create(text: "1", exercise_id: e_4.id)

e_5 = Exercise.create(lesson_id: l_2.id)
Question.create(text: "-2j = -6\n Find the value of the variable to solve the equation", exercise_id: e_5.id)
Answer.create(text: "3", exercise_id: e_5.id)

e_6 = Exercise.create(lesson_id: l_2.id)
Question.create(text: "-6r = 12\n Find the value of the variable to solve the equation", exercise_id: e_6.id)
Answer.create(text: "-2", exercise_id: e_6.id)

e_7 = Exercise.create(lesson_id: l_2.id)
Question.create(text: "5x = 10\n Find the value of the variable to solve the equation", exercise_id: e_7.id)
Answer.create(text: "2", exercise_id: e_7.id)

e_8 = Exercise.create(lesson_id: l_2.id)
Question.create(text: "14 = 7y\n Find the value of the variable to solve the equation", exercise_id: e_8.id)
Answer.create(text: "2", exercise_id: e_8.id)

e_9 = Exercise.create(lesson_id: l_2.id)
Question.create(text: "8z = 24\n Find the value of the variable to solve the equation", exercise_id: e_9.id)
Answer.create(text: "3", exercise_id: e_9.id)

e_10 = Exercise.create(lesson_id: l_2.id)
Question.create(text: "25y = 5\n Find the value of the variable to solve the equation", exercise_id: e_10.id)
Answer.create(text: "5", exercise_id: e_10.id)

l_3 = Lesson.create(curriculum_id: c.id, name: 'Why does Algebra matter?',
										instruction: "Lets say we have a bag that can hold 20 kilograms of weight, and we want to know how many melons we can place in the bag before the bag tears. Using the weighing scale that we have, we know that each melon weighs 4 kilograms. We can use algebra to find out the maximum number of lemons we can place in the bag before it tears. Lets write an equation. What is our unknown? The number of lemons we can place in the bag before it tears, lets call this ‘m’. We know that each melon weighs 4 kilograms, so 4m represents the weight of m lemons. Mathematically this means (4 kilograms) x (number of melons) = (total weight of melons). For example, if we had 3 lemons, m = 3, so the weight is represented by 4(3) = 12. If we had 1 lemon, m = 1, so the weight is represented by 4(1) = 4. Now, back to the problem. We don’t know how many lemons we have, so lets set up an equation. 4m = 20. To solve the equation, divide both sides by 4, so we have our variable m on one side of the equation and everything else on the other. 4m/4 = 20/4, so m = 5. We now know that we can place at most 5 melons in the bag before it tears. Algebra solves problems for us!!! Identify the unknown variable, set up an equation, and solve!")

e_1 = Exercise.create(lesson_id: l_3.id)
Question.create(text: "Each person eats 2 eggs for breakfast. There are 12 eggs in a carton. How many people can one carton of eggs feed?", exercise_id: e_1.id)
Answer.create(text: "6", exercise_id: e_1.id)

e_2 = Exercise.create(lesson_id: l_3.id)
Question.create(text: "Bob is two years older than Alice. Bob is 8 years old. How old is Alice?", exercise_id: e_2.id)
Answer.create(text: "6", exercise_id: e_2.id)

e_3 = Exercise.create(lesson_id: l_3.id)
Question.create(text: "There are 1000 homes in our town. 25 people live in hotels in our town. In total, our town has 5025 people in it. How many people live in each home?", exercise_id: e_3.id)
Answer.create(text: "5", exercise_id: e_3.id)

e_4 = Exercise.create(lesson_id: l_3.id)
Question.create(text: "There are 20 soccer players on the team. The manager must bring 60 cups of water to each practice, for all the players. How many cups of water does each player drink?", exercise_id: e_4.id)
Answer.create(text: "3", exercise_id: e_4.id)

e_5 = Exercise.create(lesson_id: l_3.id)
Question.create(text: "Every day, I earn $7.50 working at the food mart. How many days do I need to work before I earn $30?", exercise_id: e_5.id)
Answer.create(text: "4", exercise_id: e_5.id)

# e_6 = Exercise.create(lesson_id: l_3.id)
# Question.create(text: "-6r = 12\n Find the value of the variable to solve the equation", exercise_id: e_6.id)
# Answer.create(text: "-2", exercise_id: e_6.id)

# e_7 = Exercise.create(lesson_id: l_3.id)
# Question.create(text: "5x = 10\n Find the value of the variable to solve the equation", exercise_id: e_7.id)
# Answer.create(text: "2", exercise_id: e_7.id)

# e_8 = Exercise.create(lesson_id: l_3.id)
# Question.create(text: "14 = 7y\n Find the value of the variable to solve the equation", exercise_id: e_8.id)
# Answer.create(text: "2", exercise_id: e_8.id)

# e_9 = Exercise.create(lesson_id: l_3.id)
# Question.create(text: "8z = 24\n Find the value of the variable to solve the equation", exercise_id: e_9.id)
# Answer.create(text: "3", exercise_id: e_9.id)

# e_10 = Exercise.create(lesson_id: l_3.id)
# Question.create(text: "25y = 5\n Find the value of the variable to solve the equation", exercise_id: e_10.id)
# Answer.create(text: "5", exercise_id: e_10.id)

l_4 = Lesson.create(curriculum_id: c.id, name: 'Multiple operations',
										instruction: "Now that we have solved equations using addition and multiplication, lets combine the two. To solve an equation, we must always make sure that whatever is on either side of the equal sign are actually equal to each other. This becomes more complicated when we have multiple operations in an equation that must be performed before we can get the variable on one side of the equation and everything else on the other. Lets try an example, 5x + 3 = 18. In this example, we have a number being multiplied by a variable and added to something else to get 18. The first thing we can do is subtract 3 from both sides, so we have 5x + 3 - 3 = 18 -3. This simplifies to 5x = 15. Now, we can divide each side by 5, just like what we did in lesson 2. So, 5x/5 = 15/5, so x = 3. Lets check our answer by plugging x back into the equation. 5(3) + 3 = 15 + 3 = 18. We’re correct! Lets try another example. 9 - 4x = 5. This one is a little trickier, because we have to deal with positive and negative numbers. Lets go through the same process, and subtract 9 from both sides. 9 - 9 - 4x = 5 - 9. This simplifies to -4x = -4. Now, we can divide each side by -4. Remember, When we divide two negative numbers we get a positive number. -4x/-4 = -4/-4, so x = 1. Lets check our answer by plugging back in for x. 9 - 4(1) = 5, so we’re correct!")

e_1 = Exercise.create(lesson_id: l_4.id)
Question.create(text: "10x - 4 = 26\n Find the value of the variable to solve the equation", exercise_id: e_1.id)
Answer.create(text: "3", exercise_id: e_1.id)

e_2 = Exercise.create(lesson_id: l_4.id)
Question.create(text: "15 + 3x = 18\n Find the value of the variable to solve the equation", exercise_id: e_2.id)
Answer.create(text: "1", exercise_id: e_2.id)

e_3 = Exercise.create(lesson_id: l_4.id)
Question.create(text: "13 - 5x = 3\n Find the value of the variable to solve the equation", exercise_id: e_3.id)
Answer.create(text: "2", exercise_id: e_3.id)

e_4 = Exercise.create(lesson_id: l_4.id)
Question.create(text: "24 = 10 + 7x\n Find the value of the variable to solve the equation", exercise_id: e_4.id)
Answer.create(text: "2", exercise_id: e_4.id)

e_5 = Exercise.create(lesson_id: l_4.id)
Question.create(text: "30 - 4x = 14\n Find the value of the variable to solve the equation", exercise_id: e_5.id)
Answer.create(text: "4", exercise_id: e_5.id)

e_6 = Exercise.create(lesson_id: l_4.id)
Question.create(text: "8j + 10 = 50\n Find the value of the variable to solve the equation", exercise_id: e_6.id)
Answer.create(text: "5", exercise_id: e_6.id)

e_7 = Exercise.create(lesson_id: l_4.id)
Question.create(text: "100-25k = 25\n Find the value of the variable to solve the equation", exercise_id: e_7.id)
Answer.create(text: "3", exercise_id: e_7.id)

e_8 = Exercise.create(lesson_id: l_4.id)
Question.create(text: "42 + 8y = 50\n Find the value of the variable to solve the equation", exercise_id: e_8.id)
Answer.create(text: "1", exercise_id: e_8.id)

e_9 = Exercise.create(lesson_id: l_4.id)
Question.create(text: "12m - 8 = 28\n Find the value of the variable to solve the equation", exercise_id: e_9.id)
Answer.create(text: "3", exercise_id: e_9.id)

e_10 = Exercise.create(lesson_id: l_4.id)
Question.create(text: "50 - 2a = 20\n Find the value of the variable to solve the equation", exercise_id: e_10.id)
Answer.create(text: "15", exercise_id: e_10.id)