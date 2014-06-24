class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :category, index: true
      t.references :post, index: true

      t.timestamps
    end
  end
end
