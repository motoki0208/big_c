class CreateStarStrengths < ActiveRecord::Migration[5.1]
  def change
    create_table :star_strengths do |t|
      t.references :star
      t.references :strength

      t.timestamps
    end
  end
end
