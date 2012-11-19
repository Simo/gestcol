class CreateMateships < ActiveRecord::Migration
  def change
    create_table :mateships do |t|
      t.integer :grade_id
      t.integer :person_id

      t.timestamps
    end
  end
end
