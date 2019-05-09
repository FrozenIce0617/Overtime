require "rails_helper"

RSpec.describe Post, type: :model do
  describe "Creation" do
    before do
      @post = FactoryGirl.create(:post)
    end

    it "can be created" do
      post = FactoryGirl.create(:second_post)
      expect(post).to be_valid
    end

    it "cannot be crated without a date and rationale" do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end
  end
end
