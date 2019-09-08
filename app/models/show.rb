class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.all.maximum(:rating)
  end
  
  def self.most_popular_show
    self.all.where(":rating = ?", self.highest_rating)
  end

end