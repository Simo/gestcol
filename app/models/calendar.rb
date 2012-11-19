class Calendar < ActiveRecord::Base
  attr_accessible :almanac_id, :prospect_structure_id, :day_id, :timeframe_id, :grade_id, :matter_id, :sostituzione, :person_id
  
  belongs_to :almanacs
  belongs_to :prospect_structure
  belongs_to :day
  belongs_to :timeframe
  belongs_to :grade
  belongs_to :matter
  belongs_to :person
  
end
