require 'rails_helper'

RSpec.describe "test_questions/index", type: :view do
  before(:each) do
    assign(:test_questions, [
      TestQuestion.create!(
        :class_test => nil,
        :question => "MyText",
        :position => "Position"
      ),
      TestQuestion.create!(
        :class_test => nil,
        :question => "MyText",
        :position => "Position"
      )
    ])
  end

  it "renders a list of test_questions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
  end
end
