class RemoveLeadingZeroesAndCss < ActiveRecord::Migration
  def change
    rename_column :flag_layers, :color01, :color1
    rename_column :flag_layers, :color02, :color2
    rename_column :flag_layers, :color03, :color3
    rename_column :flag_layers, :color04, :color4
    rename_column :flag_layers, :color05, :color5
    rename_column :flag_layers, :color06, :color6
    remove_column :flag_layers, :target_css
    remove_column :flag_layers, :target_property
  end
end
