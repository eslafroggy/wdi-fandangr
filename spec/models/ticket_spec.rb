require 'spec_helper'

describe Ticket do
  it "can be purchased" do
    film = Film.create(title: "The Godfather")
    showing = film.showings.create(showing_on: "2013-01-01 12:30:00")
    ticket = showing.tickets.create(seat: "A1")

    expect(ticket.available?).to be_true
  end

  it "cannot be purchased" do
    user = User.create(
      email: "foo@bar.com",
      password: "foobar",
      password_confirmation: "foobar"
    )

    film = Film.create(title: "The Godfather")
    showing = film.showings.create(showing_on: "2013-01-01 12:30:00")
    ticket = user.tickets.create(showing_id: showing.id, seat: "A1")

    expect(ticket.available?).to be_false
  end
end
