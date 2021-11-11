class AddCustomMetaTagInContents < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :custom_meta_tag, :text
    add_column :contents, :meta_tag_description, :text

  end
end
