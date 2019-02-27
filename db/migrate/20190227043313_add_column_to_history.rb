class AddColumnToHistory < ActiveRecord::Migration[5.2]
  def change
    add_column :histories, :user_id, :integer
  end
end
