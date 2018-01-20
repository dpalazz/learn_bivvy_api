class Lessonplan < ApplicationRecord
  belongs_to :service
  belongs_to :lesson
end
