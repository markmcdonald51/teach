require "rails_helper"

RSpec.describe MutipleChoiseAnswersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mutiple_choise_answers").to route_to("mutiple_choise_answers#index")
    end

    it "routes to #new" do
      expect(:get => "/mutiple_choise_answers/new").to route_to("mutiple_choise_answers#new")
    end

    it "routes to #show" do
      expect(:get => "/mutiple_choise_answers/1").to route_to("mutiple_choise_answers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mutiple_choise_answers/1/edit").to route_to("mutiple_choise_answers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mutiple_choise_answers").to route_to("mutiple_choise_answers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mutiple_choise_answers/1").to route_to("mutiple_choise_answers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mutiple_choise_answers/1").to route_to("mutiple_choise_answers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mutiple_choise_answers/1").to route_to("mutiple_choise_answers#destroy", :id => "1")
    end

  end
end
