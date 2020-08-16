class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.float :star_number
      t.integer :user_id
      t.integer :station_id
      t.integer :category_id

      t.timestamps
    end
  end
end
