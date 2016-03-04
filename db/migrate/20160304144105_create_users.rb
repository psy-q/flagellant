class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.timestamps null: false
      t.string :nick
      t.string :provider
    end
  end
end
