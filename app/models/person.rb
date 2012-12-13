class Person < ActiveRecord::Base
  attr_accessible :nome, :cognome, :data_nascita, :indirizzo, :n_civico, :cap, :citta, :provincia, :tel_fisso, :tel_cell, :email, :note, :insegnante, :genitore, :alunno
  
  has_many :grades, :through => :mateship
  has_many :matters, :through => :teachingship
  
  #relationships directions
  has_many :directs, :foreign_key => 'person_id', :class_name => 'Person', :dependent => :destroy
  has_many :inverts, :foreign_key => 'related_id', :class_name => 'Person', :dependent => :destroy
  
  #relations
  has_many :relateds, :through => :directs
  has_many :people, :through => :inverts
  
end
