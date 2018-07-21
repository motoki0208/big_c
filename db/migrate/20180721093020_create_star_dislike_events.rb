class CreateStarDislikeEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :star_dislike_events do |t|

      t.timestamps
    end
  end
end
