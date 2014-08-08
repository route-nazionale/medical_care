class AddCampiToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :triage, :integer, null: false, default: 0
    add_column :visits, :terapia, :text
  end
end
