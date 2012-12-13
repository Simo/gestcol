class Relationship < ActiveRecord::Base
  attr_accessible :degree_id, :person_id, :related_id
  
  belongs_to :degre
  belongs_to :person, :class_name => 'Person'
  belongs_to :related, :class_name => 'Person'
  
end
