class CreateStarsDislikeSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :stars_dislike_subjects do |t|
      t.references :star
      t.references :school_subject
      
      t.timestamps
    end
    add_index  :stars_dislike_subjects, [:star_id, :school_subject], unique: true
  end
end
