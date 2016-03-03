class TemplateLayers < ActiveRecord::Migration
  def change
    add_column :flag_layers, :is_template, :boolean
  end
end
