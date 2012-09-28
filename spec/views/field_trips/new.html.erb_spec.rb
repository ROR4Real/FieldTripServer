require 'spec_helper'

describe "field_trips/new" do
  before(:each) do
    assign(:field_trip, FactoryGirl.create(:field_trip))
    assign(:schools, [FactoryGirl.create(:school), FactoryGirl.create(:school)])
  end

  it "renders new field_trip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => field_trips_path, :method => "post" do
      assert_select "input#field_trip_name", :name => "field_trip[name]"
      assert_select "select#field_trip_school_id", :name => "field_trip[school_id]"
    end
  end
end
