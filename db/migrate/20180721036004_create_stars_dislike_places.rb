class CreateStarsDislikePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :stars_dislike_places do |t|
      t.references :star
      t.references :school_place

      t.timestamps
    end
    add_index  :stars_dislike_places, [:star_id, :school_place_id], unique: true
  end
end
