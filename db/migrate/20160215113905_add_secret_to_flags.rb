class AddSecretToFlags < ActiveRecord::Migration
  def change
    add_column :flags, :secret, :text
  end
end
