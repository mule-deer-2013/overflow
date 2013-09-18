class Vote < ActiveRecord::Base
  attr_accessible :vote
  belongs_to :questions, polymorphic: true
  belongs_to :voter, :class => :User, polymorphic: true 
end
