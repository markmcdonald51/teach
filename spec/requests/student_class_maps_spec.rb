require 'rails_helper'

RSpec.describe "StudentClassMaps", type: :request do
  describe "GET /student_class_maps" do
    it "works! (now write some real specs)" do
      get student_class_maps_path
      expect(response).to have_http_status(200)
    end
  end
end
