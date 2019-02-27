class RenameRecordToRecords < ActiveRecord::Migration[5.2]
  def change
    rename_table :record, :records
  end
end
