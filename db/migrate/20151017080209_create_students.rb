class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.date :dob
      t.string :email
      t.integer :grade
      t.string :parent_phone
      t.decimal :gpa
      t.string :nick_name

      t.timestamps null: false
    end
  end
end
