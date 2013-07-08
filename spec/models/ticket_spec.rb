require 'spec_helper'

describe Ticket do
  it "can be purchased" do
    ticket = FactoryGirl.create(:ticket)

    expect(ticket.available?).to be_true
  end

  it "cannot be purchased" do
    ticket = FactoryGirl.create(:reserved_ticket)

    expect(ticket.available?).to be_false
  end
end
