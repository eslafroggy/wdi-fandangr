class Ticket < ActiveRecord::Base
  attr_accessible :showing_id, :seat

  belongs_to :user
  belongs_to :showing
end
