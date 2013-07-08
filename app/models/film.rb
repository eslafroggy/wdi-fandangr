class Film < ActiveRecord::Base
  attr_accessible :title

  has_many :showings
end
