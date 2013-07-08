require 'spec_helper'

describe Film do
  it "has many showings" do
    film = Film.create(title: "The Godfather")
    showing = film.showings.create(showing_on: "2013-01-01 12:30:00")

    expect(film.showings).to include(showing)
  end
end
