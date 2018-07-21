class CreateWeaknesses < ActiveRecord::Migration[5.1]
  def change
    create_table :weaknesses do |t|
      t.string :name

      t.timestamps
    end
  end
end
