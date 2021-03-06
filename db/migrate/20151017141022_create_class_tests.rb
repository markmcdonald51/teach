class CreateClassTests < ActiveRecord::Migration
  def change
    create_table :class_tests do |t|
      t.references :student_class, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.integer :position
      t.date :date_of_test

      t.timestamps null: false
    end
  end
end
