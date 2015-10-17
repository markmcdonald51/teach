class CreateStudentClassMaps < ActiveRecord::Migration
  def change
    create_table :student_class_maps do |t|
      t.references :student, index: true, foreign_key: true
      t.references :student_class, index: true, foreign_key: true
      t.string :grade
      t.date :year

      t.timestamps null: false
    end
  end
end
