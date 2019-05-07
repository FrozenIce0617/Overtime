require "rails_helper"
require "database_cleaner"

RSpec.describe User, type: :model do
  describe "creation" do
    before do
      @user = User.create(email: "test1@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")
    end

    it "can be created" do
      expect(@user).to be_valid
    end

    it "cannot be created without first_name, last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end
