class Question < ActiveRecord::Base
  attr_accessible :exercise_id, :text

  belongs_to :exercise

  validates_presence_of :text
end
