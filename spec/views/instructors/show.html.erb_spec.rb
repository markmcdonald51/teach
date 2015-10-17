require 'rails_helper'

RSpec.describe "instructors/show", type: :view do
  before(:each) do
    @instructor = assign(:instructor, Instructor.create!(
      :name => "Name",
      :room => "Room"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Room/)
  end
end
