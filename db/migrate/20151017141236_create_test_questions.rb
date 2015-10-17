class CreateTestQuestions < ActiveRecord::Migration
  def change
    create_table :test_questions do |t|
      t.references :class_test, index: true, foreign_key: true
      t.text :question
      t.string :position

      t.timestamps null: false
    end
  end
end
