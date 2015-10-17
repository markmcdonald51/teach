require 'rails_helper'

RSpec.describe "class_tests/index", type: :view do
  before(:each) do
    assign(:class_tests, [
      ClassTest.create!(
        :student_class => nil,
        :name => "Name",
        :position => 1
      ),
      ClassTest.create!(
        :student_class => nil,
        :name => "Name",
        :position => 1
      )
    ])
  end

  it "renders a list of class_tests" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
