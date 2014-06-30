class Post < ActiveRecord::Base
  # has_one :comment
  has_many :comments, :as => :commentable, :dependent => :restrict_with_exception
  has_many :authors

  # has_many :tags
  # has_many :categories, :through => :tags

  has_and_belongs_to_many :categories
  validates :title, :presence => true
end
