require 'rails_helper'

RSpec.describe "mutiple_choise_answers/show", type: :view do
  before(:each) do
    @mutiple_choise_answer = assign(:mutiple_choise_answer, MutipleChoiseAnswer.create!(
      :test_question => nil,
      :answer => "MyText",
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
