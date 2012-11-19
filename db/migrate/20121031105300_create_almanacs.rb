class CreateAlmanacs < ActiveRecord::Migration
  def self.up
    create_table :almanacs do |t|
      t.integer :n_settimana
      t.integer :month_id
      t.integer :giorno_inizio
      t.integer :giorno_fine
      t.integer :anno
      t.timestamps
    end
  end

  def self.down
    drop_table :almanacs
  end
end
