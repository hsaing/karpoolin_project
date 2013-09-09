class Carpooler < ActiveRecord::Base
  belongs_to :parent
  belongs_to :activity
  belongs_to :student

 validates :parent_id, :activity_id, :presence => true

end
