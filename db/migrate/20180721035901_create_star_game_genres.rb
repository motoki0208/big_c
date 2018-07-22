class CreateStarGameGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :star_game_genres do |t|
      t.references :star
      t.references :game_genre

      t.timestamps
    end
  end
end
