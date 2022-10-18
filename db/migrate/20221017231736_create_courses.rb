class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :grade

      t.timestamps
    end
    add_index :courses, :grade, unique: true
  end
end
