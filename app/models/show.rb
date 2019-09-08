class Show < ActiveRecord::Base 
  
  def self.highest_rating
    show = Show.new 
    show.all.maximum(:rating)
  end
  
  def self.most_popular_show
    show = Show.new
    show.all.where(":rating = ?", self.highest_rating)
  end
end