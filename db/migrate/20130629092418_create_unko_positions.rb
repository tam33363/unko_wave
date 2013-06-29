class CreateUnkoPositions < ActiveRecord::Migration
  def change
    create_table :unko_positions do |t|
      t.string :latitude
      t.string :longitude
      t.string :info

      t.timestamps
    end
  end
end
