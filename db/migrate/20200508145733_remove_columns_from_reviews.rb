class RemoveColumnsFromReviews < ActiveRecord::Migration[6.0]
  def change

    remove_column :reviews, :comment, :text

    remove_column :reviews, :likes, :integer

    remove_column :reviews, :rating, :integer
  end
end
