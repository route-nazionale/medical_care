class CreatePersonalInfos < ActiveRecord::Migration
  def change
    create_table :personal_infos do |t|
      t.string :tessera_sanitaria
      t.text :annotazioni_mediche
      t.references :human, index: true
      t.integer :last_editor, index: true

      t.timestamps
    end
  end
end
