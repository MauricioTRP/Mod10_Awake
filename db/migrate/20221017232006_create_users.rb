class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :rut
      t.string :name
      t.string :last_name
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
    add_index :users, :rut, unique: true
  end
end
