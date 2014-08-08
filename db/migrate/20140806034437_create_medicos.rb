class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nome
      t.string :cognome
      t.string :data

      t.timestamps
    end
  end
end
