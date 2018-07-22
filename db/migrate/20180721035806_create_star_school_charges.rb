class CreateStarSchoolCharges < ActiveRecord::Migration[5.1]
  def change
    create_table :star_school_charges do |t|
      t.references :star
      t.references :school_charge

      t.timestamps
    end
  end
end
