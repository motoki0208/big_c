class CreateStarDislikeSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :star_dislike_subjects do |t|

      t.timestamps
    end
  end
end
