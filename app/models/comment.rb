class Comment < ActiveRecord::Base
  attr_accessible :content, :post, :user
  
  belongs_to :post
  belongs_to :user
end
