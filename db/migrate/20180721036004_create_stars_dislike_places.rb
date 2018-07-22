class CreateStarsDislikePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :stars_dislike_places do |t|
      t.references :star
      t.references :school_place

      t.timestamps
    end
  end
end
