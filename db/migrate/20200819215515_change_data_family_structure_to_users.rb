class ChangeDataFamilyStructureToUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column :users, :family_structure, :integer
  end
end
