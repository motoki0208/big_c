class CreateStars < ActiveRecord::Migration[5.1]
  def change
    create_table :stars do |t|
      t.text       :avatar,          null: false
      t.string     :name,            null: false, default: "匿名"
      t.text       :url_name
      t.text       :url
      t.date       :birthday,        null: false
      t.integer    :gender              #enum
      t.integer    :sibling_position    #enum
      t.integer    :family_env          #enum
      t.integer    :economic_situation  #enum
      t.references :hometown
      t.references :occupation
      t.references :school_club
      t.integer    :preference_for_school  #enum
      t.boolean    :truancy_experience     #不登校経験

      t.timestamps
    end
  end
end
