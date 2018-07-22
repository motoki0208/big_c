class CreateStarLikePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :star_like_places do |t|
      t.references :star
      t.references :school_place

      t.timestamps
    end
  end
end
