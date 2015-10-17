class Student < ActiveRecord::Base
  has_many :student_class_maps , dependent: :destroy
  has_many :student_classes, through: :student_class_maps 
end
