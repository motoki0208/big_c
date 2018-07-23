class CreateStarsWorryTags < ActiveRecord::Migration[5.1]
  def change
    create_table :stars_worry_tags do |t|
      t.references :star
      t.references :worry_tag

      t.timestamps
    end
  end
end
