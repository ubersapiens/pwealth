class AddTitleToCmsPages < ActiveRecord::Migration
  def change
    add_column :cms_pages, :title, :string
  end
end
