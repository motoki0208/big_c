class CreateStars < ActiveRecord::Migration[5.1]
  def change
    create_table :stars do |t|
      t.string :name, null: false, default: ""
      t.boolean :gender, default: true
      t.date :birthday, null: false
      t.references :address, foreign_key: { to_table: :locations }
      t.references :hometown, foreign_key: {to_table: :locations}
      t.text :career
      t.references :occupation
      t.integer :sibling
      t.integer :family
      t.integer :economic_situation
      t.string :holiday_research
      t.integer :like_place
      t.integer :dislike_place
      t.integer :club
      t.integer :preference_for_school
      t.boolean :truancy
      t.integer :like_comic
      t.timestamps
    end
  end
end
