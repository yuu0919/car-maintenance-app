class RenameDataToRecord < ActiveRecord::Migration[5.2]
  def change
    rename_table :data, :record
  end
end
