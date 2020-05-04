class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :drink_id
      t.text :comment
      t.integer :likes
      t.integer :rating

      t.timestamps
    end
  end
end
