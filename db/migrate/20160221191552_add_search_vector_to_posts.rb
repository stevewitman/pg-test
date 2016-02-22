class AddSearchVectorToPosts < ActiveRecord::Migration
  def change
     add_column :posts, :search_vector, :tsvector
  end
end
