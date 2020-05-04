class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :description
      t.string :img_url
      t.text :recipe

      t.timestamps
    end
  end
end
