class Film < ActiveRecord::Base
  attr_accessible :title, :poster

  has_many :showings

  mount_uploader :poster, ImageUploader
end
