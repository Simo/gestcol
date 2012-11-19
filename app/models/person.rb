class Person < ActiveRecord::Base
  attr_accessible :nome, :cognome, :data_nascita, :indirizzo, :n_civico, :cap, :citta, :provincia, :tel_fisso, :tel_cell, :email, :note, :insegnante, :genitore, :alunno
  
  has_many :grades, :through => :mateship
  has_many :matters, :through => :teachingship
  
  #has_many :people, :through > :relationship
  
end
