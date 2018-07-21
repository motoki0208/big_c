class RemoveColumnFromStars < ActiveRecord::Migration[5.1]
  def change
    remove_column :stars, :like_place, :integer
    remove_column :stars, :dislike_place, :integer
  end
end
