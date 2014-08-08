class CreateMagazzinos < ActiveRecord::Migration
  def change
    create_table :magazzinos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
