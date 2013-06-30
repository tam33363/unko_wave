class CreateUnkoPositions < ActiveRecord::Migration
  def change
    create_table :unko_positions do |t|
      t.decimal :latitude, :precision => 18, :scale => 14
      t.decimal :longitude, :precision => 18, :scale => 14
      t.string :info

      t.timestamps
    end
  end
end
