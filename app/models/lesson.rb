class Lesson < ApplicationRecord
  has_many :lessonplans
  has_many :services, through: :lessonplans, dependent: :destroy 
end
