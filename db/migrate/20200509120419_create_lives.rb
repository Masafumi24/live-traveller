class CreateLives < ActiveRecord::Migration[5.2]
  def change
    create_table :lives do |t|
      t.string :title
      t.string :day
      t.string :information
      t.timestamps
    end
  end
end
