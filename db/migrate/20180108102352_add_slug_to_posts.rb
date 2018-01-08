class AddSlugToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :slug, :String
    add_index :posts, :slug, unique: true
  end
end
