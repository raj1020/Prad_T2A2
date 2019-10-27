class CreateCooksFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :cooks_foods do |t|
      t.references :cook, foreign_key: true
      t.references :food, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
