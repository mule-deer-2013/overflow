class Question < ActiveRecord::Base
	
  attr_accessible :user_id, :content, :title

  validates :content, :title, presence: true

end

