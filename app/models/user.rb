

class User < ActiveRecord::Base

  has_many :questions
  has_many :responses
  has_many :votes, as: :votable

  attr_accessible :username, :email, :password, :password_confirmation
  

  has_secure_password
  
  validates :username, :email, :password, presence: true
  validates :email, format: /\w+@\w+\.\w+/,
                    uniqueness: true


end


