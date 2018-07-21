class CreateStarSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :star_subjects do |t|
      t.references :star
      t.references :subject

      t.timestamps
    end
  end
end
