class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum("rating")
  end 
  
  def self.most_popular_show
    Show.find_by(rating: self.highest_rating)
  end
  
  def self.lowest_rating
    self.minimum("rating")
  end 
  
  def self.least_popular_show
    Show.find_by(rating: self.lowest_rating)
  end
  
  def self.ratings_sum
    Show.sum("rating")
  end 
  
  def self.popular_shows
  
end 