class StudentsController < ApplicationController
  active_scaffold :"student" do |config|
  
    config.columns.exclude(:student_class_maps)
    config.columns[:dob].form_ui = :date_picker
    #config.columns = [:name, :students]
    config.columns[:student_classes].form_ui = :chosen
    
  end
end
