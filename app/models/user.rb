class User < ActiveRecord::Base
  has_many :questions

  validates_presence_of :username, :password
  validates :username, uniqueness: true

  attr_accessible :username

 
end

class ArgumentError < StandardError; end
