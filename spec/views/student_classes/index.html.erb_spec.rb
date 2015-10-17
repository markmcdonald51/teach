require 'rails_helper'

RSpec.describe "student_classes/index", type: :view do
  before(:each) do
    assign(:student_classes, [
      StudentClass.create!(
        :instructor => nil,
        :name => "Name",
        :grade => 1,
        :max_students => 2
      ),
      StudentClass.create!(
        :instructor => nil,
        :name => "Name",
        :grade => 1,
        :max_students => 2
      )
    ])
  end

  it "renders a list of student_classes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
