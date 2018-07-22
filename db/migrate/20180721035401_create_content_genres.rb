class CreateContentGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :content_genres do |t|
      t.string :name, null: false
    end
  end
end
