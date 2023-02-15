class CreateIlluminations < ActiveRecord::Migration[7.0]
  def change
    create_table :illuminations do |t|
      t.references :devices, null: false, foreign_key: true
      t.float :illum

      t.timestamps
    end
  end
end
