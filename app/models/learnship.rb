class Learnship < ActiveRecord::Base
  attr_accessible :grade_id, :matter_id
  
  belongs_to :grade
  belongs_to :matter
  
end
