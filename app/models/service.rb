class Service < ApplicationRecord
  has_many :lessonplans
  has_many :lessons, through: :lessonplans, dependent: :destroy
end
