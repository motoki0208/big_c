class CreateOccupations < ActiveRecord::Migration[5.1]
  def change
    create_table :occupations do |t|
      t.string :name, null: false, index: true
      t.text :url

      t.timestamps
    end
  end
end
