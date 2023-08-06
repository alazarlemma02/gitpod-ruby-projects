require "rails_helper"

RSpec.describe TodoModelsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/todo_models").to route_to("todo_models#index")
    end

    it "routes to #new" do
      expect(get: "/todo_models/new").to route_to("todo_models#new")
    end

    it "routes to #show" do
      expect(get: "/todo_models/1").to route_to("todo_models#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/todo_models/1/edit").to route_to("todo_models#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/todo_models").to route_to("todo_models#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/todo_models/1").to route_to("todo_models#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/todo_models/1").to route_to("todo_models#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/todo_models/1").to route_to("todo_models#destroy", id: "1")
    end
  end
end
