class AddOsservazioneToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :osservazione, :boolean, default: false
  end
end
