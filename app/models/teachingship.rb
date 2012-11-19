class Teachingship < ActiveRecord::Base
  attr_accessible :costo, :matter_id, :person_id
  
  belongs_to :person
  belongs_to :matter
  
end
