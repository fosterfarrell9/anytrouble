class RemoveSortFromMedium < ActiveRecord::Migration[5.2]
  def change
    remove_column :media, :sort, :text
  end
end
