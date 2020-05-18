class CreateLives < ActiveRecord::Migration[5.2]
  def change
    create_table :lives do |t|
      t.string :title, null: false
      t.string :date
      t.integer :fee, null: false
      t.string :venue, null: false
      t.string :seat, null: false
      t.string :information, null: false
      t.references :artist, foreign_key: true
      t.timestamps
    end
  end
end
