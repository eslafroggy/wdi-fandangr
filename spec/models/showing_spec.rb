require 'spec_helper'

describe Showing do
  it "has tickets available" do
    showing = FactoryGirl.create(:showing)
    ticket = FactoryGirl.create(:ticket, {:showing_id => showing.id})

    expect(showing.available_tickets?).to be_true
  end

  it "is sold out" do
    showing = FactoryGirl.create(:showing)
    ticket = FactoryGirl.create(:reserved_ticket, {:showing_id => showing.id})

    expect(showing.available_tickets?).to be_false
  end
end
