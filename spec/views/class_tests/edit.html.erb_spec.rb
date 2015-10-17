require 'rails_helper'

RSpec.describe "class_tests/edit", type: :view do
  before(:each) do
    @class_test = assign(:class_test, ClassTest.create!(
      :student_class => nil,
      :name => "MyString",
      :position => 1
    ))
  end

  it "renders the edit class_test form" do
    render

    assert_select "form[action=?][method=?]", class_test_path(@class_test), "post" do

      assert_select "input#class_test_student_class_id[name=?]", "class_test[student_class_id]"

      assert_select "input#class_test_name[name=?]", "class_test[name]"

      assert_select "input#class_test_position[name=?]", "class_test[position]"
    end
  end
end
