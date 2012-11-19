class WeeklyProspect < ActiveRecord::Base
  attr_accessible :prospect_structure_id, :grade_id, :matter_id, :day_id, :timeframe_id
  
  belongs_to :prospect_structure
  belongs_to :grade
  belongs_to :matter
  belongs_to :day
  belongs_to :timeframe
  
end
