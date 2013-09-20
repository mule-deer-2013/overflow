class Question < ActiveRecord::Base
  belongs_to :user
  has_many :votes, as: :votable
  has_many :responses, as: :responsable

  attr_accessible :user_id, :content, :title
   
  validates :content, :title, presence: true


end 

