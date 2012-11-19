class CreateDays < ActiveRecord::Migration
  def self.up
    create_table :days do |t|
      t.string :giornata
      t.integer :prt
      t.timestamps
    end
  end

  def self.down
    drop_table :days
  end
end
