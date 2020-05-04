class RemoveColumnDescriptionFromDrinks < ActiveRecord::Migration[6.0]
  def change
    remove_column :drinks, :description 
    
  end
end
