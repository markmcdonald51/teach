class StudentClass < ActiveRecord::Base
  belongs_to :instructor
  
  has_many :student_class_maps
  has_many :students, through: :student_class_maps
  
  has_many :class_tests
end
