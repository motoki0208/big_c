class CreateStars < ActiveRecord::Migration[5.1]
  def change
    create_table :stars do |t|
      t.string     :name, null: false, default: ""
      t.boolean    :gender, default: true
      t.date       :birthday, null: false
      t.references :hometown
      t.references :occupation
      t.integer    :sibling_position  #enum
      t.integer    :family_env  #enum
      t.integer    :economic_situation  #enum
      t.text       :holiday_research
      t.references :like_place,foreign_key: {to_table: :school_places}
      t.references :dislike_place,foreign_key: {to_table: :school_places}
      # t.references :club 未作成
      t.integer    :preference_for_school  #enum
      t.boolean    :truancy
      # t.references :like_comic_genre 未作成
      t.timestamps
    end
  end
end
