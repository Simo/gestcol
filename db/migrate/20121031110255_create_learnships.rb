class CreateLearnships < ActiveRecord::Migration
  def change
    create_table :learnships do |t|
      t.integer :matter_id
      t.integer :grade_id

      t.timestamps
    end
  end
end
