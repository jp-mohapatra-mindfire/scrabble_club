class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :place

      t.timestamps null: false
    end
  end
end
