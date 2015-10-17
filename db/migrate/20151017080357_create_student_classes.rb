class CreateStudentClasses < ActiveRecord::Migration
  def change
    create_table :student_classes do |t|
      t.references :instructor, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.integer :grade
      t.integer :max_students

      t.timestamps null: false
    end
  end
end
