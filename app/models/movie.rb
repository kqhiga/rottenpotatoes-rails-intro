class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G','PG','PG-13','R']
  end
  
  def self.with_ratings(ratings_list)
    if ratings_list.empty? 
      Movie.all
    else 
      Movie.where('rating in (?)', ratings_list)
    end
  end
end
