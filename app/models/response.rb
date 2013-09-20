class Response < ActiveRecord::Base
  belongs_to :question
  has_many :responses, as: :responsable
  belongs_to :responsable, polymorphic: true
  has_many :votes, as: :votable

  attr_accessible :content, :responsable_id, :responsable_type, :question_id, :answer_id

  validates :content, presence: true
end
