class Answer < ActiveRecord::Base
  attr_accessible :exercise_id, :text

  belongs_to :exercise
end
