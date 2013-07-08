require 'spec_helper'

describe User do
  before do
    @user = FactoryGirl.create(:user)
  end

  it "authenticates with a valid email and password" do
    expect(@user.authenticate("foobar")).to eq(@user)
  end

  it "authenticates with an incorrect password" do
    expect(@user.authenticate("incorrect")).to be_false
  end

  it "reserves a ticket to a showing" do
    ticket = FactoryGirl.create(:reserved_ticket, :user_id => @user.id)

    expect(@user.tickets).to include(ticket)
  end
end
