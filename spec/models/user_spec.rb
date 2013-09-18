require 'spec_helper'

describe User do
  let(:user) { User.new(username: "test", password: "12345678") }
  describe "#initialize" do

    it "does not initialize with invalid password" do
      User.new(username: "foo", password: "123")
    end

    it "does not initialize when username is not unique" do
      user.save
      expect { user.create(username: "test") }.to 
    end

    it "is able to persist in the database when saved" do
      pending
      # expect { User.create }.to change { User.all.count }.by(1)
    end

    it "save bcrypt password in the DB" do
      pending
    end
  end

end
