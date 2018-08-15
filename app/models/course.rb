class Course < ApplicationRecord
  has_many :media, as: :teachable
  has_many :lectures

  def course
    self
  end
end
