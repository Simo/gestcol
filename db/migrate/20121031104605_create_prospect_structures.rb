class CreateProspectStructures < ActiveRecord::Migration
  def self.up
    create_table :prospect_structures do |t|
      t.string :descrizione
      t.boolean :valido
      t.timestamps
    end
  end

  def self.down
    drop_table :prospect_structures
  end
end
