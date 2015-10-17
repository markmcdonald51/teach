require 'rails_helper'

RSpec.describe "student_class_maps/edit", type: :view do
  before(:each) do
    @student_class_map = assign(:student_class_map, StudentClassMap.create!(
      :student => nil,
      :student_class => nil,
      :grade => "MyString"
    ))
  end

  it "renders the edit student_class_map form" do
    render

    assert_select "form[action=?][method=?]", student_class_map_path(@student_class_map), "post" do

      assert_select "input#student_class_map_student_id[name=?]", "student_class_map[student_id]"

      assert_select "input#student_class_map_student_class_id[name=?]", "student_class_map[student_class_id]"

      assert_select "input#student_class_map_grade[name=?]", "student_class_map[grade]"
    end
  end
end
