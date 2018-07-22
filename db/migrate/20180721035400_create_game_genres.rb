class CreateGameGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :game_genres do |t|
      t.string :name, null: false
    end
  end
end
