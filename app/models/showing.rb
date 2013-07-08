class Showing < ActiveRecord::Base
  attr_accessible :film_id, :showing_on

  has_many :tickets
  belongs_to :film

  def available_tickets?
    unreserved_tickets = self.tickets.where(:user_id => nil)

    unreserved_tickets.length > 0
  end
end
