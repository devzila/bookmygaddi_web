class ContentRelationship < ApplicationRecord
  belongs_to :content
  belongs_to :related_content, class_name: 'Content'
end
