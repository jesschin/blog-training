class Comment < ActiveRecord::Base
  # belongs_to :post
  belongs_to :commentable, :polymorphic => true
  has_many :subcomments, :class_name => "Reply", :foreign_key => "parent_comment_id"
  belongs_to :parent_comment, :class_name => "Comment"
end
