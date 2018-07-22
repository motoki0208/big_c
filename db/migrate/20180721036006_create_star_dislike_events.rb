class CreateStarDislikeEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :star_dislike_events do |t|
      t.references :star
      t.references :school_event
      
      t.timestamps
    end
  end
end
