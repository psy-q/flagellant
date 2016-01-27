class AddTargetCssToFlagLayers < ActiveRecord::Migration
  def change
    add_column :flag_layers, :target_css, :text
    add_column :flag_layers, :target_property, :text
  end
end
