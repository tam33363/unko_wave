class CreateUnkoPositions < ActiveRecord::Migration
  def change
    create_table :unko_positions do |t|
      t.decimal :latitude, :precision => 11, :scale => 8 
      t.decimal :longitude, :precision => 11, :scale => 8
      t.string :info

      t.timestamps
    end
  end
end
