class Response < ActiveRecord::Base
   attr_accessible :body, :user_id, :question_id
   validates :body, presence: true, allow_blank: false


end
