class Article < ActiveRecord::Base
	has_many :photos
	belongs_to :user
  attr_accessible :article_name, :description, :user_id, :image
end
