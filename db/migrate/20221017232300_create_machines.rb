class CreateMachines < ActiveRecord::Migration[7.0]
  def change
    create_table :machines do |t|
      t.string :serial
      t.string :brand
      t.string :model
      t.string :kind_machine

      t.timestamps
    end
    add_index :machines, :serial, unique: true
  end
end
