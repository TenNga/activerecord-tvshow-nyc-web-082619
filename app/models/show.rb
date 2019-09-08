class Show < ActiveRecord::Base 
  
  def self.highest_rating
    movie = Show.new 
    movie.all.maximum(:rating)
  end
  
  def self.most_popular_show
    Show.all.where(":rating = ?", self.highest_rating)
  end
end