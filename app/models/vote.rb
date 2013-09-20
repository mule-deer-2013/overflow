class Vote < ActiveRecord::Base
  attr_accessible :votable_id, :votable_type, :value
  belongs_to :user
  belongs_to :votable, polymorphic: true

end
