require 'rails_helper'

RSpec.describe "mutiple_choise_answers/new", type: :view do
  before(:each) do
    assign(:mutiple_choise_answer, MutipleChoiseAnswer.new(
      :test_question => nil,
      :answer => "MyText",
      :position => "MyString"
    ))
  end

  it "renders new mutiple_choise_answer form" do
    render

    assert_select "form[action=?][method=?]", mutiple_choise_answers_path, "post" do

      assert_select "input#mutiple_choise_answer_test_question_id[name=?]", "mutiple_choise_answer[test_question_id]"

      assert_select "textarea#mutiple_choise_answer_answer[name=?]", "mutiple_choise_answer[answer]"

      assert_select "input#mutiple_choise_answer_position[name=?]", "mutiple_choise_answer[position]"
    end
  end
end
