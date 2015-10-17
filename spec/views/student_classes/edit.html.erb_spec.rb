require 'rails_helper'

RSpec.describe "student_classes/edit", type: :view do
  before(:each) do
    @student_class = assign(:student_class, StudentClass.create!(
      :instructor => nil,
      :name => "MyString",
      :grade => 1,
      :max_students => 1
    ))
  end

  it "renders the edit student_class form" do
    render

    assert_select "form[action=?][method=?]", student_class_path(@student_class), "post" do

      assert_select "input#student_class_instructor_id[name=?]", "student_class[instructor_id]"

      assert_select "input#student_class_name[name=?]", "student_class[name]"

      assert_select "input#student_class_grade[name=?]", "student_class[grade]"

      assert_select "input#student_class_max_students[name=?]", "student_class[max_students]"
    end
  end
end
