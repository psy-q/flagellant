class AddBaseLayerToFlags < ActiveRecord::Migration
  def change
    add_column :flags, :base_layer_id, :integer
  end
end
