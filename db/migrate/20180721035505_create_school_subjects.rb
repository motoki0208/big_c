class CreateSchoolSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :school_subjects do |t|
      t.string :name, null: false
    end
  end
end
