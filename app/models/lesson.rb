class Lesson < ApplicationRecord
  has_many :media, as: :teachable
  belongs_to :lecture

  def course
    lecture.course
  end
end
