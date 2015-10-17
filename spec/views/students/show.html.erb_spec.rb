require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "Name",
      :email => "Email",
      :grade => 1,
      :parent_phone => "Parent Phone",
      :gpa => "9.99",
      :nick_name => "Nick Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Parent Phone/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Nick Name/)
  end
end
