class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :title
      t.text :introduction
      t.date :date
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
