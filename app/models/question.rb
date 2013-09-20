class Question < ActiveRecord::Base
	
  attr_accessible :user_id, :content, :title

  validates :content, :title, presence: true

  has_many :responses 

end

