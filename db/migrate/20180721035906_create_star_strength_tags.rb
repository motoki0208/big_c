class CreateStarStrengthTags < ActiveRecord::Migration[5.1]
  def change
    create_table :star_strength_tags do |t|
      t.references :star
      t.references :strength_tag

      t.timestamps
    end
  end
end
