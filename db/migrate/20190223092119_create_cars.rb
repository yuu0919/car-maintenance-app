class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.timestamps
      t.string :tire
      t.integer :year
      t.string :model
      t.string :name
    end
  end
end
