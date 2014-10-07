class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.string :slug, :null => false
      t.belongs_to :user

      t.timestamps null: false
    end

    add_index :blogs, :slug, :unique => true
  end
end
