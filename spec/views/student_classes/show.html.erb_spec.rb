require 'rails_helper'

RSpec.describe "student_classes/show", type: :view do
  before(:each) do
    @student_class = assign(:student_class, StudentClass.create!(
      :instructor => nil,
      :name => "Name",
      :grade => 1,
      :max_students => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
