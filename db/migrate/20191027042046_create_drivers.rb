class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.integer :vehicle

      t.timestamps
    end
  end
end
