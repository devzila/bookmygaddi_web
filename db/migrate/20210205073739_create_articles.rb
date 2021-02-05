class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.references :category, foreign_key: true
      t.string :title
      t.string :slug, index: {unique: true}
      t.text :excerpt
      t.string :ui_type
      t.string :hover_button_type


      t.timestamps
    end
  end
end
