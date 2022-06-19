class RemoveForeignKeys < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :attendances, :users
    remove_foreign_key :attendances, :events 
  end
end
