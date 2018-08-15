class Medium < ApplicationRecord
  belongs_to :teachable, polymorphic: true

  def course
    teachable.course
  end
end
