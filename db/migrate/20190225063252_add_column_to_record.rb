class AddColumnToRecord < ActiveRecord::Migration[5.2]
  def change
    add_column :record, :car_id, :integer
  end
end
