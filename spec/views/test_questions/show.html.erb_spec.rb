require 'rails_helper'

RSpec.describe "test_questions/show", type: :view do
  before(:each) do
    @test_question = assign(:test_question, TestQuestion.create!(
      :class_test => nil,
      :question => "MyText",
      :position => "Position"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Position/)
  end
end
