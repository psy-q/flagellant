class AddMaximumsToLayers < ActiveRecord::Migration
  def change
    add_column :flag_layers, :max_colors, :integer, :default => 0
    add_column :flag_layers, :max_strokes, :integer, :default => 0
  end
end
