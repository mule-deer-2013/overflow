require 'bcrypt'
class User < ActiveRecord::Base
  validates_presence_of :username, :password_digest
  validates :username, uniqueness: true

  attr_accessible :username, :password_digest

  include BCrypt

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end

  def ask_question(title, content)
    raise ArgumentError if title == nil || content == nil
    self.questions << Question.create(title: title, content: content)
  end
  
end

class ArgumentError < StandardError; end



# has_many :responses, as: :responseable
  # has_many :questions
  # has_many :votes, :source => :votes, as: :voteable
