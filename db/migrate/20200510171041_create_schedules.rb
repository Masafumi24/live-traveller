class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :title
      t.string :day
      t.string :fee
      t.string :venue
      t.string :information
      t.references :artist, foreign_key: true
      t.references :live, foreign_key: true
      t.timestamps
    end
  end
end
