class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.references :human, index: true, null:false
      t.references :location, index: true, null:false
      t.date :date, null: false
      t.time :hour, null: false
      t.integer :doctor, null: false
      t.text :anamnesi
      t.text :diagnosi

      t.timestamps
    end
    add_index :visits, :doctor
  end
end
