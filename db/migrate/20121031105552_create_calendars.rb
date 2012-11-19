class CreateCalendars < ActiveRecord::Migration
  def self.up
    create_table :calendars do |t|
      t.integer :almanac_id
      t.integer :prospect_structure_id
      t.integer :day_id
      t.integer :timeframe_id
      t.integer :grade_id
      t.integer :matter_id
      t.boolean :sostituzione
      t.integer :person_id
      t.timestamps
    end
  end

  def self.down
    drop_table :calendars
  end
end
