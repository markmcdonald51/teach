require 'rails_helper'

RSpec.describe "students/new", type: :view do
  before(:each) do
    assign(:student, Student.new(
      :name => "MyString",
      :email => "MyString",
      :grade => 1,
      :parent_phone => "MyString",
      :gpa => "9.99",
      :nick_name => "MyString"
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do

      assert_select "input#student_name[name=?]", "student[name]"

      assert_select "input#student_email[name=?]", "student[email]"

      assert_select "input#student_grade[name=?]", "student[grade]"

      assert_select "input#student_parent_phone[name=?]", "student[parent_phone]"

      assert_select "input#student_gpa[name=?]", "student[gpa]"

      assert_select "input#student_nick_name[name=?]", "student[nick_name]"
    end
  end
end
