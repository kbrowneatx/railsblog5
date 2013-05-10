class Post < ActiveRecord::Base
  attr_accessible :user, :content, :title
  
  belongs_to :user
  has_many :comments, :dependent => :destroy
end
