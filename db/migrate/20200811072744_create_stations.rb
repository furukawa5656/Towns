class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :prefecture
      t.text :description
      t.float :x
      t.float :y

      t.timestamps
    end
  end
end
