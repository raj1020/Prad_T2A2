class CreateEaters < ActiveRecord::Migration[5.2]
  def change
    create_table :eaters do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :delivery_address
      t.text :notes

      t.timestamps
    end
  end
end
