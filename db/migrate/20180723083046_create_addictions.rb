class CreateAddictions < ActiveRecord::Migration[5.1]
  def change
    create_table :addictions do |t|
      t.text            :title,           null: false
      t.text            :summary,         null: false
      t.text            :addicted_points
      t.text            :difficult_points
      t.text            :trigger
      t.text            :future_aim
      t.text            :trying_things
      t.text            :message
      t.integer         :status  #enum
      t.references      :star,            null: false
      t.timestamps
    end
  end
end
