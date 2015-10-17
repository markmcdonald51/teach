require 'rails_helper'

RSpec.describe "student_class_maps/new", type: :view do
  before(:each) do
    assign(:student_class_map, StudentClassMap.new(
      :student => nil,
      :student_class => nil,
      :grade => "MyString"
    ))
  end

  it "renders new student_class_map form" do
    render

    assert_select "form[action=?][method=?]", student_class_maps_path, "post" do

      assert_select "input#student_class_map_student_id[name=?]", "student_class_map[student_id]"

      assert_select "input#student_class_map_student_class_id[name=?]", "student_class_map[student_class_id]"

      assert_select "input#student_class_map_grade[name=?]", "student_class_map[grade]"
    end
  end
end
