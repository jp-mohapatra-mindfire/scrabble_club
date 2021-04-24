class Scores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.belongs_to :game
      t.belongs_to :player
      t.float :value

      t.timestamps null: false
    end
  end
end
