class Vote < ActiveRecord::Base
  attr_accessible :votable_id, :votable_type, :value
  belongs_to :question
  belongs_to :response
  belongs_to :votable, polymorphic: true
  
end
