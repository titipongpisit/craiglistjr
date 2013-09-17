class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :description
      t.string :price
      t.string :email
      t.belongs_to :category
    end 
  end
end
