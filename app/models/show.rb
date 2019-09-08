class Show < ActiveRecord::Base 
  
  def self.highest_rating
    movie = Movie.new 
    movie.all.maximum(:rating)
  end
  
  def self.most_popular_show
    Movie.all.where(":rating = ?", self.highest_rating)
  end
end