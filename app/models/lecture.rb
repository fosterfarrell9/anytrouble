class Lecture < ApplicationRecord
  has_many :media, as: :teachable
  belongs_to :course
  has_many :lessons
  
end
