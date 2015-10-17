require 'rails_helper'

RSpec.describe "class_tests/new", type: :view do
  before(:each) do
    assign(:class_test, ClassTest.new(
      :student_class => nil,
      :name => "MyString",
      :position => 1
    ))
  end

  it "renders new class_test form" do
    render

    assert_select "form[action=?][method=?]", class_tests_path, "post" do

      assert_select "input#class_test_student_class_id[name=?]", "class_test[student_class_id]"

      assert_select "input#class_test_name[name=?]", "class_test[name]"

      assert_select "input#class_test_position[name=?]", "class_test[position]"
    end
  end
end
