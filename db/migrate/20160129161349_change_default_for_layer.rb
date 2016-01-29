class ChangeDefaultForLayer < ActiveRecord::Migration
  def change
    change_column :flag_layers, :is_base_layer, :boolean, :default => false
  end
end
