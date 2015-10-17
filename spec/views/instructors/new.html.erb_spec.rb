require 'rails_helper'

RSpec.describe "instructors/new", type: :view do
  before(:each) do
    assign(:instructor, Instructor.new(
      :name => "MyString",
      :room => "MyString"
    ))
  end

  it "renders new instructor form" do
    render

    assert_select "form[action=?][method=?]", instructors_path, "post" do

      assert_select "input#instructor_name[name=?]", "instructor[name]"

      assert_select "input#instructor_room[name=?]", "instructor[room]"
    end
  end
end
