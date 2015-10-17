require 'rails_helper'

RSpec.describe "instructors/edit", type: :view do
  before(:each) do
    @instructor = assign(:instructor, Instructor.create!(
      :name => "MyString",
      :room => "MyString"
    ))
  end

  it "renders the edit instructor form" do
    render

    assert_select "form[action=?][method=?]", instructor_path(@instructor), "post" do

      assert_select "input#instructor_name[name=?]", "instructor[name]"

      assert_select "input#instructor_room[name=?]", "instructor[room]"
    end
  end
end
