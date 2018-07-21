class CreateStarEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :star_events do |t|
      t.references :star
      t.references :event

      t.timestamps
    end
  end
end
