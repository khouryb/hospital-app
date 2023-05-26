class RemoveMistakeColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :patients, :string
  end
end
