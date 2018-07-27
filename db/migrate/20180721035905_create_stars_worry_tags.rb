class CreateStarsWorryTags < ActiveRecord::Migration[5.1]
  def change
    create_table :stars_worry_tags do |t|
      t.references :star
      t.references :worry_tag

      t.timestamps
    end
    add_index  :stars_worry_tags, [:star_id, :worry_tag_id], unique: true
  end
end
