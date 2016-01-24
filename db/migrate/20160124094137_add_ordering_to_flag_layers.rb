class AddOrderingToFlagLayers < ActiveRecord::Migration
  def change
    add_column :flag_layers, :sortorder, :integer
    add_column :flag_layers, :is_base_layer, :boolean
  end
end
