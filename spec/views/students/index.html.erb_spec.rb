require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :name => "Name",
        :email => "Email",
        :grade => 1,
        :parent_phone => "Parent Phone",
        :gpa => "9.99",
        :nick_name => "Nick Name"
      ),
      Student.create!(
        :name => "Name",
        :email => "Email",
        :grade => 1,
        :parent_phone => "Parent Phone",
        :gpa => "9.99",
        :nick_name => "Nick Name"
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Parent Phone".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Nick Name".to_s, :count => 2
  end
end
