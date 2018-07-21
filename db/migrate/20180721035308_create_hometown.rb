class CreateHometowns < ActiveRecord::Migration[5.1]
  def change
    create_table :hometowns do |t|
      t.string :name, null: false, index: true
    end
  end
end
