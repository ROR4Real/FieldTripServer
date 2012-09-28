require 'spec_helper'

describe "field_trips/show" do
  before(:each) do
    @field_trip = assign(:field_trip, stub_model(FieldTrip,
      :name => "Name",
      :school => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
  end
end
