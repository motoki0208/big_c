class CreateStarsWeaknessTags < ActiveRecord::Migration[5.1]
  def change
    create_table :stars_weakness_tags do |t|
      t.references :star
      t.references :weakness_tag

      t.timestamps
    end
  end
end
