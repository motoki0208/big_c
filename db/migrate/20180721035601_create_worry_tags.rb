class CreateWorryTags < ActiveRecord::Migration[5.1]
  def change
    create_table :worry_tags do |t|
      t.text     :text, null: false
      t.timestamps
    end
  end
end
