class User < ActiveRecord::Base
  has_secure_password
  has_many :tweets

  extend Slug::ClassMethods
  include Slug::InstanceMethods

end
