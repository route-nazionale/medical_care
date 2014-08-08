class CreateHumen < ActiveRecord::Migration
  def change
    create_table :humen do |t|
      t.string :cu
      t.integer :cucode
      t.string :nome
      t.string :cognome
      t.integer :quartiere
      t.integer :contrada
      t.string :codicecensimento
      t.string :idgruppo
      t.string :idunita
      t.boolean :realcredit


      t.timestamps
    end
  end
end
