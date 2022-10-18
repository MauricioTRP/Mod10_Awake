class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.references :user, null: false, foreign_key: true
      t.references :machine, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
