class CreateTemperatures < ActiveRecord::Migration[7.0]
  def change
    create_table :temperatures do |t|
      t.references :device, null: false, foreign_key: true
      t.float :temp

      t.timestamps
    end
  end
end
