class CreateStarsSpecialityTags < ActiveRecord::Migration[5.1]
  def change
    create_table :stars_speciality_tags do |t|
      t.references :star
      t.references :speciality_tag

      t.timestamps
    end
    add_index  :stars_speciality_tags, [:star_id, :speciality_tag_id], unique: true
  end
end
