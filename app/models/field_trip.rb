class FieldTrip < ActiveRecord::Base
  belongs_to :school
  attr_accessible :name

  def school_name
    school.name
  end
end
