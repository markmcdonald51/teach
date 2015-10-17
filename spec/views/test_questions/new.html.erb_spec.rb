require 'rails_helper'

RSpec.describe "test_questions/new", type: :view do
  before(:each) do
    assign(:test_question, TestQuestion.new(
      :class_test => nil,
      :question => "MyText",
      :position => "MyString"
    ))
  end

  it "renders new test_question form" do
    render

    assert_select "form[action=?][method=?]", test_questions_path, "post" do

      assert_select "input#test_question_class_test_id[name=?]", "test_question[class_test_id]"

      assert_select "textarea#test_question_question[name=?]", "test_question[question]"

      assert_select "input#test_question_position[name=?]", "test_question[position]"
    end
  end
end
