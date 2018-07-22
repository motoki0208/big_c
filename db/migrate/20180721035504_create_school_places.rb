class CreateSchoolPlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :school_places do |t|
      t.string :name, null: false
    end
  end
end
