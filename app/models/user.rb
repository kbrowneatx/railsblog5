class User < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :password, :post_anonymously, :twitter, :type, :website
  
  has_many :comments
end

class Author < User
  has_many :posts
end

class RegUser < User

end