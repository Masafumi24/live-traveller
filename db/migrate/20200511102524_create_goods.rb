class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.string :name
      t.string :price
      t.references :live, foreign_key: true
      t.timestamps
    end
  end
end
