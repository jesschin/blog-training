class AddParentCommentFkToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :parent_comment, index: true
  end
end
