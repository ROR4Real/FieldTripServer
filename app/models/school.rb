class School < ActiveRecord::Base
  has_many :field_trips
  attr_accessible :address, :board, :city, :has_ecs, :grade_range, :name, :postal_code, :province, :school_type, :category

  validates :province, :length => {:is => 2}, :presence => true
  validates :name, :presence => true
end
