class CreateStarPrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :star_programs do |t|
      t.references :star
      t.references :program

      t.timestamps
    end
  end
end
