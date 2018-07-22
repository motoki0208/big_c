class CreateStarsContentGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :stars_content_genres do |t|
      t.references :star
      t.references :content_genre

      t.timestamps
    end
  end
end
