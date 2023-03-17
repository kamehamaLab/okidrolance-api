class AddColumDevice < ActiveRecord::Migration[7.0]
  def change
    add_column :devices, :name, :string
  end
end

