class Relationship < ActiveRecord::Base
  attr_accessible :degree_id, :person_id, :related_id
  
  belongs_to :degree
  belongs_to :person, :class_name => 'Person', :foreign_key => 'person_id'
  belongs_to :related, :class_name => 'Person', :foreign_key => 'related_id'
  
end
