class AddLikesCountToStars < ActiveRecord::Migration[5.1]
  def change
    add_column :stars, :likes_count, :integer
  end
end
