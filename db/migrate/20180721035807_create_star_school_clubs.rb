class CreateStarSchoolClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :star_school_clubs do |t|
      t.references :star
      t.references :school_club

      t.timestamps
    end
  end
end
