class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.date :date
      t.time :start
      t.time :finish
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
