class Response < ActiveRecord::Base
  belongs_to :user
  has_many :responses, as: :responsable
  belongs_to :responsable, polymorphic: true
  has_many :votes, as: :votable

  attr_accessible :content, :responsable_id, :responsable_type, :question, :answer_id

  validates :content, presence: true
end
