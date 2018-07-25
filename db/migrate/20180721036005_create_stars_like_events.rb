class CreateStarsLikeEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :stars_like_events do |t|
      t.references :star
      t.references :school_event

      t.timestamps
    end
    add_index  :stars_like_events, [:star_id, :school_event], unique: true
  end
end
