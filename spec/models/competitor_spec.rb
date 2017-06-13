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
  it "is invalid without a username" do
	competitor = Competitor.new(username: nil)
	competitor.valid?
	expect(competitor.errors[:username]).to include("can't be blank")
  end
  it "is invalid with a duplicate email" do
  	Competitor.create(
  		username: "Mike", 
  		email: "Mike@Yatco.com",
  		password: "Mike"
  		)
  	
  	competitor = Competitor.new(
  		username: "Dani", 
  		email: "Mike@Yatco.com"
  		password: "Mike"
  		)

  	competitor.valid?
    expect(competitor.errors[:email]).to include("has already been taken")
   end
end