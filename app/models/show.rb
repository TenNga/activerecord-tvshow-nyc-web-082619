class Show < ActiveRecord::Base 
  def self.highest_rating
    Movie.all.maximum(:rating)
  end
end