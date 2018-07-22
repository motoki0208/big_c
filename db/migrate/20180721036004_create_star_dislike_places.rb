class CreateStarDislikePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :star_dislike_places do |t|
      t.references :star
      t.references :school_place

      t.timestamps
    end
  end
end
