class AddPostsSearchIdxToPosts < ActiveRecord::Migration
  def change
    execute <<-EOS
      CREATE INDEX posts_search_idx ON posts USING gin(search_vector)
    EOS
  end
end
