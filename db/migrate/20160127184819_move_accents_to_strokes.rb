class MoveAccentsToStrokes < ActiveRecord::Migration
  def change
    rename_column :flag_layers, :accent_color01, :stroke1
    rename_column :flag_layers, :accent_color02, :stroke2
    rename_column :flag_layers, :accent_color03, :stroke3
    rename_column :flag_layers, :accent_color04, :stroke4
    rename_column :flag_layers, :accent_color05, :stroke5
    rename_column :flag_layers, :accent_color06, :stroke6
  end
end
