require "spec_helper"

describe FieldTripsController do
  describe "routing" do

    it "routes to #index" do
      get("/field_trips").should route_to("field_trips#index")
    end

    it "routes to #new" do
      get("/field_trips/new").should route_to("field_trips#new")
    end

    it "routes to #show" do
      get("/field_trips/1").should route_to("field_trips#show", :id => "1")
    end

    it "routes to #edit" do
      get("/field_trips/1/edit").should route_to("field_trips#edit", :id => "1")
    end

    it "routes to #create" do
      post("/field_trips").should route_to("field_trips#create")
    end

    it "routes to #update" do
      put("/field_trips/1").should route_to("field_trips#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/field_trips/1").should route_to("field_trips#destroy", :id => "1")
    end

  end
end
