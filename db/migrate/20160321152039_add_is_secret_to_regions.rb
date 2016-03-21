class AddIsSecretToRegions < ActiveRecord::Migration
  def change
    add_column :regions, :is_secret, :boolean
  end
end
