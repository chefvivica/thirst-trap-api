class AddColumnsToDrinks < ActiveRecord::Migration[6.0]
  def change
    add_column :drinks, :comment, :text
    add_column :drinks, :likes, :integer
    add_column :drinks, :rating, :integer
  end
end
