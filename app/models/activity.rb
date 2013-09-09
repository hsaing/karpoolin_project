class Activity < ActiveRecord::Base
  validates :activity_name,:activity_start_date, :activity_start_time, :presence => true
  validates :activity_end_time, :address_street, :address_city, :presence => true
  validates :address_state,:presence		=> true,
  							:length			=> { :maximum => 2 }
  has_many :students
  has_many :parents
  has_many :carpoolers
end
