class Lesson < ActiveRecord::Base
  attr_accessible :curriculum_id, :instruction

  belongs_to :curriculum
  has_many :exercises

  def number
   curriculum.lessons.index(self) + 1
	end
end
