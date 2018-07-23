class CreateSpecialityTags < ActiveRecord::Migration[5.1]
  def change
    create_table :speciality_tags do |t|
      t.text     :text, null: false
      t.timestamps
    end
  end
end
