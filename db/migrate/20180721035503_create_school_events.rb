class CreateSchoolEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :school_events do |t|
      t.string   :name, null: false
    end
  end
end
