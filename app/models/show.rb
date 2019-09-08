class Show < ActiveRecord::Base 
  
  def self.highest_rating
    Movie.all.maximum(:rating)
  end
  
  def self.most_popular_show
    Movie.all.find_by(:rating self.highest_rating)
  end
end