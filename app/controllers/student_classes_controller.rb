class StudentClassesController < ApplicationController
  active_scaffold :"student_class" do |config|
    config.columns = [:name, :grade, :max_students, :students, :class_tests]
    config.columns[:students].form_ui = :chosen
 
  end
end
