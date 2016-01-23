class AddSizeToLayers < ActiveRecord::Migration
  def change
    add_column :flag_layers, :width, :integer
    add_column :flag_layers, :height, :integer
  end
end
