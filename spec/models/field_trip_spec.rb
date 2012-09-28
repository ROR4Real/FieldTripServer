require 'spec_helper'

describe FieldTrip do
  it "should provide a school name" do
    trip = FactoryGirl.create(:field_trip)
    trip.school_name.should_not be_nil
  end
  
  it "should provide the correct school name" do
    school = FactoryGirl.create(:school, :name => "My School")
    trip = FactoryGirl.create(:field_trip, :school_id => school.id)
    trip.school_name.should == "My School"
  end
end
