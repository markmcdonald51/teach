require 'rails_helper'

RSpec.describe "student_classes/new", type: :view do
  before(:each) do
    assign(:student_class, StudentClass.new(
      :instructor => nil,
      :name => "MyString",
      :grade => 1,
      :max_students => 1
    ))
  end

  it "renders new student_class form" do
    render

    assert_select "form[action=?][method=?]", student_classes_path, "post" do

      assert_select "input#student_class_instructor_id[name=?]", "student_class[instructor_id]"

      assert_select "input#student_class_name[name=?]", "student_class[name]"

      assert_select "input#student_class_grade[name=?]", "student_class[grade]"

      assert_select "input#student_class_max_students[name=?]", "student_class[max_students]"
    end
  end
end
