class FieldTrip < ActiveRecord::Base
  belongs_to :school
  attr_accessible :name, :school_id

  def school_name
    school.name unless school.nil?
  end
end
