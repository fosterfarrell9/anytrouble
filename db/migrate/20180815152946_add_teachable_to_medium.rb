class AddTeachableToMedium < ActiveRecord::Migration[5.2]
  def change
    add_reference :media, :teachable, polymorphic: true
  end
end
