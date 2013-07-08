require 'spec_helper'

describe Showing do
  it "has tickets available" do
    movie = Movie.create(title: "The Godfather")
    showing = movie.showings.create(showing_on: "2013-01-01 12:30:00")
    ticket = showing.tickets.create(seat: "A1")

    expect(showing.available_tickets?).to be_true
  end

  it "is sold out" do
    user = User.create(
      email: "foo@bar.com",
      password: "foobar",
      password_confirmation: "foobar"
    )

    movie = Movie.create(title: "The Godfather")
    showing = movie.showings.create(showing_on: "2013-01-01 12:30:00")
    ticket = user.tickets.create(showing_id: showing.id, seat: "A1")

    expect(showing.available_tickets?).to be_false
  end
end
