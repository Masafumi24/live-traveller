class CreateLives < ActiveRecord::Migration[5.2]
  def change
    create_table :lives do |t|
      t.string :title
      t.string :day
      t.integer :fee
      t.string :venue
      t.string :seat
      t.string :information
      t.references :artist, foreign_key: true
      t.timestamps
    end
  end
end
