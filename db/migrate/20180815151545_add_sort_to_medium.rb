class AddSortToMedium < ActiveRecord::Migration[5.2]
  def change
    add_column :media, :sort, :text
  end
end
