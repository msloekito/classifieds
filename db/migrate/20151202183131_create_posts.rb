class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :name
      t.string :email
      t.string :description
      t.string :category

      t.timestamps null: false
    end
  end
end
