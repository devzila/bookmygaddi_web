class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.references :parent
      t.string :title
      t.string :slug, index: {unique: true}
      t.text :excerpt
      t.text :description
      t.string :ui_type
      t.string :hover_button_type
      t.string :thumbtype
      t.string :thumbmedia_url

      t.timestamps
    end
  end
end
