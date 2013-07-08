require 'spec_helper'

describe Showing do
  it "has tickets available" do
    ticket = FactoryGirl.create(:ticket)
    showing = ticket.showing

    expect(showing.available_tickets?).to be_true
  end

  it "is sold out" do
    ticket = FactoryGirl.create(:reserved_ticket)
    showing = ticket.showing

    expect(showing.available_tickets?).to be_false
  end
end
