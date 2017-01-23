class User < ActiveRecord::Base
  has_secure_password
  has_many :tweets

  def slug
    username.downcase.gsub(/ /, "-")
  end

  def self.find_by_slug(slug) #Taylor Swift
    self.all.find{|a| a.slug == slug}
  end



end
