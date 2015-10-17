require 'rails_helper'

RSpec.describe "student_class_maps/index", type: :view do
  before(:each) do
    assign(:student_class_maps, [
      StudentClassMap.create!(
        :student => nil,
        :student_class => nil,
        :grade => "Grade"
      ),
      StudentClassMap.create!(
        :student => nil,
        :student_class => nil,
        :grade => "Grade"
      )
    ])
  end

  it "renders a list of student_class_maps" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
  end
end
