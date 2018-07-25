class CreateStarsLikePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :stars_like_places do |t|
      t.references :star
      t.references :school_place

      t.timestamps
    end
    add_index  :stars_like_places, [:star_id, :school_place], unique: true
  end
end
