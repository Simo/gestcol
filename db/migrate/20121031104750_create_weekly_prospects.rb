class CreateWeeklyProspects < ActiveRecord::Migration
  def self.up
    create_table :weekly_prospects do |t|
      t.integer :prospect_structure_id
      t.integer :grade_id
      t.integer :matter_id
      t.integer :day_id
      t.integer :timeframe_id
      t.timestamps
    end
  end

  def self.down
    drop_table :weekly_prospects
  end
end
