class Instructor < ActiveRecord::Base
  has_many :student_classes
    
end
