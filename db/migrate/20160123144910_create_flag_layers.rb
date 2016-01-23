class CreateFlagLayers < ActiveRecord::Migration
  def change
    create_table :flag_layers do |t|
      t.integer :flag_id
      t.string :template_name

      t.string :color01
      t.string :color02
      t.string :color03
      t.string :color04
      t.string :color05
      t.string :color06

      t.string :accent_color01
      t.string :accent_color02
      t.string :accent_color03
      t.string :accent_color04
      t.string :accent_color05
      t.string :accent_color06

      t.timestamps null: false
    end
  end
end
