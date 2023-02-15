class CreateWaterTemperatures < ActiveRecord::Migration[7.0]
  def change
    create_table :water_temperatures do |t|
      t.references :device, null: false, foreign_key: true
      t.float :w_temp

      t.timestamps
    end
  end
end
