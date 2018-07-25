class CreateStarsLikeSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :stars_like_subjects do |t|
      t.references :star
      t.references :school_subject
      
      t.timestamps
    end
    add_index  :stars_like_subjects, [:star_id, :school_subject_id], unique: true
  end
end
