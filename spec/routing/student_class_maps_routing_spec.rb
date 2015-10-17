require "rails_helper"

RSpec.describe StudentClassMapsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/student_class_maps").to route_to("student_class_maps#index")
    end

    it "routes to #new" do
      expect(:get => "/student_class_maps/new").to route_to("student_class_maps#new")
    end

    it "routes to #show" do
      expect(:get => "/student_class_maps/1").to route_to("student_class_maps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/student_class_maps/1/edit").to route_to("student_class_maps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/student_class_maps").to route_to("student_class_maps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/student_class_maps/1").to route_to("student_class_maps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/student_class_maps/1").to route_to("student_class_maps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/student_class_maps/1").to route_to("student_class_maps#destroy", :id => "1")
    end

  end
end
