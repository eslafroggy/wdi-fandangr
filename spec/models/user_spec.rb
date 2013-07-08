require 'spec_helper'

describe User do
  it "authenticates with a valid email and password" do
    user = User.create(
      email: "foo@bar.com",
      password: "foobar",
      password_confirmation: "foobar"
    )

    expect(User.authenticate("foo@bar.com", "foobar")).to eq(user)
  end

  it "authenticates with an incorrect password" do
    user = User.create(
      email: "foo@bar.com",
      password: "foobar",
      password_confirmation: "foobar"
    )

    expect(User.authenticate("foo@bar.com", "incorrect")).to be_false
  end

  it "reserves a ticket to a showing" do
    user = User.create(
      email: "foo@bar.com",
      password: "foobar",
      password_confirmation: "foobar"
    )

    movie = Movie.create(title: "The Godfather")
    showing = movie.showings.create(showing_on: "2013-01-01 12:30:00")
    ticket = user.tickets.create(showing_id: showing.id, seat: "A1")

    expect(user.tickets).to include(ticket)
  end
end
