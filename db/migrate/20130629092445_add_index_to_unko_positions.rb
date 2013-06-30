class AddIndexToUnkoPositions < ActiveRecord::Migration
  def change
    add_index :unko_positions, [:latitude, :longitude], :name => 'position_index'
    add_index :unko_positions, :device_id, :name => 'device_id_index', :unique => true
  end
end
