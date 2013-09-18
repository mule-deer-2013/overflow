class User < ActiveRecord::Base
  attr_accessible :username, :password_digest
  has_many :responses, as: :responseable
  has_many :questions
  has_many :votes, :source => :votes, as: :voteable
end
