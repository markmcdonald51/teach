class ClassTest < ActiveRecord::Base
  belongs_to :student_class
  
  has_many :test_questions
end
