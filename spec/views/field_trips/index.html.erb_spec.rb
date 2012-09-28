require 'spec_helper'

describe "field_trips/index" do
  before(:each) do
    assign(:field_trips, [
      stub_model(FieldTrip,
        :name => "Name",
        :school => nil
      ),
      stub_model(FieldTrip,
        :name => "Name",
        :school => nil
      )
    ])
  end

  it "renders a list of field_trips" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
