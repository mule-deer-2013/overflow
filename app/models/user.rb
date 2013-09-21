class User < ActiveRecord::Base
  has_many :questions
  has_many :responses
  has_many :votes, as: :votable

  validates_presence_of :username
  validates :username, uniqueness: true

  attr_accessible :username


end

class ArgumentError < StandardError; end
