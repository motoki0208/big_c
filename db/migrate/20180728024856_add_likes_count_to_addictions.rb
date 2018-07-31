class AddLikesCountToAddictions < ActiveRecord::Migration[5.1]
  def change
    add_column :addictions, :likes_count, :integer
  end
end
