class CreateSchedaMedicas < ActiveRecord::Migration
  def change
    create_table :scheda_medicas do |t|
   
      t.string :cu,                     default: ''
      t.string :intolleranzealimentari, default: ''
      t.string :allergiealimentari,     default: ''
      t.string :allergiefarmaci,        default: ''
      t.boolean :fisiche,               default: false
      t.boolean :lis,                   default: false
      t.boolean :psichiche,             default: false
      t.boolean :sensoriali,            default: false
      t.string :patologie,              default: ''
   
      t.timestamps
    end
  end
end
