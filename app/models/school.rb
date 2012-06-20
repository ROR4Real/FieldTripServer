class School < ActiveRecord::Base
  has_many :field_trips
  attr_accessible :name
end
