class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.date :joining_date
      t.string :contact_number
      t.string :email

      t.timestamps null: false
    end
  end
end
