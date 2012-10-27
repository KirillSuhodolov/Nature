class Photo < ActiveRecord::Base
	belongs_to :article
  attr_accessible :article_id, :name, :image, :remote_image_url, :photo
  mount_uploader :image, ImageUploader

  before_create :default_name

  def default_name
    self.name ||= File.basename(image.filename, '.*').titleize if image
  end
end
