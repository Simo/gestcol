class CreateMatters < ActiveRecord::Migration
  def self.up
    create_table :matters do |t|
      t.string :nome_materia
      t.boolean :compresenza
      t.boolean :giardino
      t.string :altri_costi
      t.timestamps
    end
  end

  def self.down
    drop_table :matters
  end
end
