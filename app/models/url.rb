class Url < ActiveRecord::Base
  attr_accessible :original_url, :short_url
  before_save :shorten_url
  
  def shorten_url
    self.short_url = (0...8).map{('a'..'z').to_a[rand(26)]}.join
  end
  
end
