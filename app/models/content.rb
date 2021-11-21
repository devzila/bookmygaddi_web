class Content < ApplicationRecord
  acts_as_taggable_on :tags

  has_many :articles, class_name: "Content", foreign_key: "parent_id"
  belongs_to :category, class_name:"Content", optional: true, foreign_key: "parent_id"
  scope :categories, -> {where(parent_id: nil)}
  scope :navable, -> {where(menu_visibility: true)}

  has_many :content_relationships, foreign_key: "content_id", dependent: :destroy
  has_many :related_contents, through: :content_relationships, source: :related_content

  accepts_nested_attributes_for :content_relationships


  validates :title, :slug, :excerpt,  presence: true
    
end
