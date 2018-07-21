class CreateStarCharges < ActiveRecord::Migration[5.1]
  def change
    create_table :star_charges do |t|
      t.references :star
      t.references :charge

      t.timestamps
    end
  end
end
