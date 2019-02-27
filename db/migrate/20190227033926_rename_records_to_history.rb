class RenameRecordsToHistory < ActiveRecord::Migration[5.2]
  def change
    rename_table :records, :histories
  end
end
