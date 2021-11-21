class CreateContentRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :content_relationships, id: false  do |t|
      t.references :content, foreign_key: true
      t.references :related_content, foreing_key: {to_able: :contents}

      t.index [:content_id, :related_content_id], unique: true
    end
  end
end
