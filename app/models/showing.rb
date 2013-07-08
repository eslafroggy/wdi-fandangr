class Showing < ActiveRecord::Base
  attr_accessible :film_id, :showing_on

  has_many :tickets
  belongs_to :film
end
