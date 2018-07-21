class CreateStarWeaknesses < ActiveRecord::Migration[5.1]
  def change
    create_table :star_weaknesses do |t|
      t.references :star
      t.references :subject

      t.timestamps
    end
  end
end
