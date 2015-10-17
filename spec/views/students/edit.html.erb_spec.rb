require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "MyString",
      :email => "MyString",
      :grade => 1,
      :parent_phone => "MyString",
      :gpa => "9.99",
      :nick_name => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input#student_name[name=?]", "student[name]"

      assert_select "input#student_email[name=?]", "student[email]"

      assert_select "input#student_grade[name=?]", "student[grade]"

      assert_select "input#student_parent_phone[name=?]", "student[parent_phone]"

      assert_select "input#student_gpa[name=?]", "student[gpa]"

      assert_select "input#student_nick_name[name=?]", "student[nick_name]"
    end
  end
end
