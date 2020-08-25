class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :prefecture
      t.text :description
      t.decimal :x, :precision => 9, :scale => 6
      t.decimal :y, :precision => 9, :scale => 6
      t.timestamps
    end
  end
end