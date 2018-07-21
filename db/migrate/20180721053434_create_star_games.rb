class CreateStarGames < ActiveRecord::Migration[5.1]
  def change
    create_table :star_games do |t|
      t.references :star
      t.references :game

      t.timestamps
    end
  end
end
