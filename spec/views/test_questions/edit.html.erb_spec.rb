require 'rails_helper'

RSpec.describe "test_questions/edit", type: :view do
  before(:each) do
    @test_question = assign(:test_question, TestQuestion.create!(
      :class_test => nil,
      :question => "MyText",
      :position => "MyString"
    ))
  end

  it "renders the edit test_question form" do
    render

    assert_select "form[action=?][method=?]", test_question_path(@test_question), "post" do

      assert_select "input#test_question_class_test_id[name=?]", "test_question[class_test_id]"

      assert_select "textarea#test_question_question[name=?]", "test_question[question]"

      assert_select "input#test_question_position[name=?]", "test_question[position]"
    end
  end
end
