class CreateStarsLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :stars_lessons do |t|
      t.references :star
      t.references :lesson
      
      t.timestamps
    end
  end
end
