class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :username, :password_digest

  # attr_accessible :username, :password_digest
  # has_many :responses, as: :responseable
  # has_many :questions
  # has_many :votes, :source => :votes, as: :voteable
end
