require 'factory_girl'

FactoryGirl.define do
  factory :user do |user|
  	user.username "Ali Tehrani"
  	user.email "ali@tehrani.eu"
  	user.password "foobar"
  end
end