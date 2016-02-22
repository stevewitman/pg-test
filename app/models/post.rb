class Post < ActiveRecord::Base

  def self.search(query)
    # search is not case sensitive and it does steming
    conditions = <<-EOS
      search_vector @@ to_tsquery('english', ?)
    EOS
    where(conditions, query)
  end

end
