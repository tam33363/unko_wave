class AddIndexToUnkoPositions < ActiveRecord::Migration
  def change
    add_index :unko_positions, [:latitude, :longitude], :name => 'position_index'
  end
end
