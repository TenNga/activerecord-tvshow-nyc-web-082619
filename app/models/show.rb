class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.all.maximum(:rating)
  end
  
  def self.most_popular_show
    self.all.where("rating = ?", self.highest_rating).first
  end
  
  def self.lowest_rating
    self.all.minimum(:rating)
  end
  
  def self.least_popular_show
    self.all.where("rating = ?", self.lowest_rating).first
  end
  
  def self.ratings_sum
    self.all.sum(:rating)
  end

end