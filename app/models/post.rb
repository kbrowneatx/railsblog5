class Post < ActiveRecord::Base
  attr_accessible :author, :content, :title
  
  belongs_to :user, class_name => "Author"
  has_many :comments, :dependent => :destroy
end
