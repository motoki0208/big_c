class CreateStarsDislikeEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :stars_dislike_events do |t|
      t.references :star
      t.references :school_event

      t.timestamps
    end
    add_index  :stars_dislike_events, [:star_id, :school_event_id], unique: true
  end
end
