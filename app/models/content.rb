class Content < ApplicationRecord
    has_many :articles, class_name: "Content", foreign_key: "parent_id"
    belongs_to :category, class_name:"Content", optional: true, foreign_key: "parent_id"
    scope :categories, -> {where(parent_id: nil)}
    scope :navable, -> {where(menu_visibility: true)}
    
end
