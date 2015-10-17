require 'rails_helper'

RSpec.describe "instructors/index", type: :view do
  before(:each) do
    assign(:instructors, [
      Instructor.create!(
        :name => "Name",
        :room => "Room"
      ),
      Instructor.create!(
        :name => "Name",
        :room => "Room"
      )
    ])
  end

  it "renders a list of instructors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Room".to_s, :count => 2
  end
end
