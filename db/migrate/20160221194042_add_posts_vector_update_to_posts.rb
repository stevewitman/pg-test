class AddPostsVectorUpdateToPosts < ActiveRecord::Migration
  def change
    execute <<-EOS
      CREATE TRIGGER posts_vector_update BEFORE INSERT OR UPDATE
      ON posts
      FOR EACH ROW EXECUTE PROCEDURE
        tsvector_update_trigger(search_vector, 'pg_catalog.english',
        title, body);
    EOS
  end
end
