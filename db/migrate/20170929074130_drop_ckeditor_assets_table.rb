class DropCkeditorAssetsTable < ActiveRecord::Migration
  def up
    drop_table :ckeditor_assets
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
