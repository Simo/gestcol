class CreateTimeframes < ActiveRecord::Migration
  def self.up
    create_table :timeframes do |t|
      t.string :orario
      t.string :inizio
      t.string :fine
      t.timestamps
    end
  end

  def self.down
    drop_table :timeframes
  end
end
