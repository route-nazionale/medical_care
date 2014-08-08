class CreateConsumos < ActiveRecord::Migration
  def change
    create_table :consumos do |t|
      t.string :nome
      t.integer :magazzino_id
      t.integer :location_id

      t.timestamps
    end
  end
end
