class Curriculum < ActiveRecord::Base
  attr_accessible :name

  has_many :lessons
end
