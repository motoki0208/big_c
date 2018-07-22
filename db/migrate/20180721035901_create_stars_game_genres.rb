class CreateStarsGameGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :stars_game_genres do |t|
      t.references :star
      t.references :game_genre

      t.timestamps
    end
  end
end
