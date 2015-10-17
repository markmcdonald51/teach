require 'rails_helper'

RSpec.describe "mutiple_choise_answers/index", type: :view do
  before(:each) do
    assign(:mutiple_choise_answers, [
      MutipleChoiseAnswer.create!(
        :test_question => nil,
        :answer => "MyText",
        :position => "Position"
      ),
      MutipleChoiseAnswer.create!(
        :test_question => nil,
        :answer => "MyText",
        :position => "Position"
      )
    ])
  end

  it "renders a list of mutiple_choise_answers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
  end
end
