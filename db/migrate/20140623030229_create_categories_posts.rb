class CreateCategoriesPosts < ActiveRecord::Migration
  def change
    create_table :categories_posts do |t|
      t.references :category, index: true
      t.references :post, index: true
    end
  end
end
