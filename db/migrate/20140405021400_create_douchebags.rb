class CreateDouchebags < ActiveRecord::Migration
  def change
    create_table :douchebags do |t|
      t.string :name
      t.integer :how_big

      t.timestamps
    end
  end
end
