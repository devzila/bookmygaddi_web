class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug, index: {unique: true}
      t.text :excerpt
      t.text :description
      t.string :thumbtype
      t.string :thumbmedia_URL

      t.timestamps
    end
  end
end
