class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :nome
      t.string :cognome
      t.date :data_nascita
      t.string :indirizzo
      t.string :n_civico
      t.string :cap
      t.string :citta
      t.string :provincia
      t.string :tel_fisso
      t.string :tel_cell
      t.string :email
      t.string :note
      t.boolean :insegnante
      t.boolean :genitore
      t.boolean :alunno
      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
