class RemoveEditSecrets < ActiveRecord::Migration
  def change
    remove_column :flags, :secret
  end
end
