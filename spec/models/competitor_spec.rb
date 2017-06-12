require 'rails_helper'

describe Competitor do
  it "is valid with username, password, and email" do
  	competitor = Competitor.create(username: "Mike", password: "Mike", email: "Mike@Yatco.com")
  	expect(competitor).to be_valid
  end
  it "is invalid without username" do
  	competitor = Competitor.create(email: "Mike@Yatco.com", password: "Mike")
  	expect(competitor).not_to be_valid
  end
    it "is invalid without password" do
  	competitor = Competitor.create(email: "Mike@Yatco.com", username: "Mike")
  	expect(competitor).not_to be_valid
  end
end