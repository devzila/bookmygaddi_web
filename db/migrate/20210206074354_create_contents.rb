class CreateContents < ActiveRecord::Migration[6.1]
  def change
    create_table :contents do |t|
      t.references :parent
      t.string :title, null: false
      t.string :slug, index: {unique: true}, null: false
      t.text :excerpt
      t.text :content
      t.integer :ui_type
      t.integer :hover_button_type
      t.string :thumbmedia_url
      t.integer :comment_count, default: 0
      t.integer :like_count, default: 0
      t.integer :view_priority, default: 0
      t.boolean :menu_visibility, default: false
      t.boolean :active, default: true
      t.date :valid_till
      

      t.timestamps
      t.index [:parent_id, :active]
    end
  end
end
