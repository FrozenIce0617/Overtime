require 'rails_helper'
require 'database_cleaner'

RSpec.describe User, type: :model do
  describe "creation" do
    before do
      @user = User.create(email: "test1@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")
    end
    
    it "can be created" do
      expect(@user).to be_valid
    end
  end
end
