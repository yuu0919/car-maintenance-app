class CreateData < ActiveRecord::Migration[5.2]
  def change
    create_table :data do |t|
      t.timestamps
      t.string :title, null: false
      t.text :comment, null: false
      t.date :maintenance, null: false
      t.date :plan
    end
  end
end
