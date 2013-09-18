require 'spec_helper'

describe User do
  let(:bpassword) { BCrypt::Password.create("my password") }
  let(:user) { User.create(username: "test", password_digest: bpassword) }
  describe "#initialize" do

    it "does not save to DB when username is not unique" do
      expect { User.create(username: "test") }.to_not change{User.count}
    end

    it "is able to persist in the database when saved" do
      expect { user }.to change { User.count }.by(1)
    end

    it "raises error when either username or password is missing" do
      expect { User.create(username: "foo") }.to_not change{User.count}
      expect { User.create }.to_not change{User.count}

    end

    # it "save bcrypt password in the DB" do
    #   expect(user.password_digest).to_not eq(User.find_by_username("test").password_digest)
    # end
  end

  describe "#ask_question" do
    it "create question in DB with title and content that associate with the user" do
      pending
      # expect {user.ask_question("this is title", "this is content") }.to change{ user.questions}.by(1)
    end

    it "errs when title or content is nil" do
      expect { user.ask_question }.to raise_error(ArgumentError)
    end


  end

end
