class Mateship < ActiveRecord::Base
  attr_accessible :grade_id, :person_id
  
  belongs_to :grade
  belongs_to :person
  
end
