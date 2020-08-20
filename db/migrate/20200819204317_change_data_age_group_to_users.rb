class ChangeDataAgeGroupToUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column :users, :age_group, :integer
  end
end
