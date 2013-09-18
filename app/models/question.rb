class Question < ActiveRecord::Base
  attr_accessible :user_id, :content, :title

  validates :content, :title, presence: true


end

# old model stuff
  # attr_accessible :title, :content
  # belongs_to :user
  # has_many :responses, as: :responsable
  # has_many :votes, as: :votable  