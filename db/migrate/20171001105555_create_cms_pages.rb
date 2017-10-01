class CreateCmsPages < ActiveRecord::Migration
  def change
    create_table :cms_pages do |t|
      t.text :text_1
      t.text :text_2
      t.text :text_3
      t.attachment :header_image
      t.attachment :image_1
      t.attachment :image_2

      t.timestamps null: false
    end
  end
end
